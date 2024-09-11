import 'package:dynamic_form/shared/utlities/log_service.dart';

abstract class Expression {
  dynamic evaluate(Map<String, dynamic> valueMap);
}

class AdditionExpression extends Expression {
  final Expression left;
  final Expression right;

  AdditionExpression(this.left, this.right);

  @override
  dynamic evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) + right.evaluate(valueMap);
  }
}

class SubtractionExpression extends Expression {
  final Expression left;
  final Expression right;

  SubtractionExpression(this.left, this.right);

  @override
  dynamic evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) - right.evaluate(valueMap);
  }
}

class MultiplicationExpression extends Expression {
  final Expression left;
  final Expression right;

  MultiplicationExpression(this.left, this.right);

  @override
  dynamic evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) * right.evaluate(valueMap);
  }
}

class DivisionExpression extends Expression {
  final Expression left;
  final Expression right;

  DivisionExpression(this.left, this.right);

  @override
  dynamic evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) / right.evaluate(valueMap);
  }
}

class ValueExpression extends Expression {
  final dynamic value;

  ValueExpression(this.value);

  @override
  dynamic evaluate(Map<String, dynamic> valueMap) {
    var evaluatedValue = value;
    if (value is String && valueMap.containsKey(value)) {
      evaluatedValue = valueMap[value];
    }
    if (evaluatedValue == null) {
      return 0; // Treat null as 0
    }
    if (evaluatedValue is String) {
      if (int.tryParse(evaluatedValue) != null) {
        return int.parse(evaluatedValue);
      }
      if (double.tryParse(evaluatedValue) != null) {
        return double.parse(evaluatedValue);
      }
      // Log.e('Error: Value "$evaluatedValue" is not a valid number.');
      return 0; // Return 0 for invalid number strings
    }
    return evaluatedValue;
  }
}

class ExpressionFactory {
  static Expression parse(String expression) {
    try {
      return _parseExpression(expression);
    } catch (e) {
      throw FormatException('Invalid expression format: $expression');
    }
  }

  static Expression _parseExpression(String expression) {
    expression = expression.replaceAll(' ', '');
    if (_isSimpleValue(expression)) {
      return ValueExpression(expression);
    }
    return _parseAdditionSubtraction(expression);
  }

  static bool _isSimpleValue(String expression) {
    return int.tryParse(expression) != null ||
        double.tryParse(expression) != null ||
        !expression.contains(RegExp(r'[+\-*/()]'));
  }

  static Expression _parseAdditionSubtraction(String expression) {
    var parts = _splitExpression(expression, '+', '-');
    if (parts.length > 1) {
      var left = _parseAdditionSubtraction(parts[0]);
      for (int i = 1; i < parts.length; i += 2) {
        var operator = parts[i];
        var right = _parseMultiplicationDivision(parts[i + 1]);
        if (operator == '+') {
          left = AdditionExpression(left, right);
        } else if (operator == '-') {
          left = SubtractionExpression(left, right);
        }
      }
      return left;
    }
    return _parseMultiplicationDivision(expression);
  }

  static Expression _parseMultiplicationDivision(String expression) {
    var parts = _splitExpression(expression, '*', '/');
    if (parts.length > 1) {
      var left = _parseMultiplicationDivision(parts[0]);
      for (int i = 1; i < parts.length; i += 2) {
        var operator = parts[i];
        var right = _parseValue(parts[i + 1]);
        if (operator == '*') {
          left = MultiplicationExpression(left, right);
        } else if (operator == '/') {
          left = DivisionExpression(left, right);
        }
      }
      return left;
    }
    return _parseValue(expression);
  }

  static Expression _parseValue(String expression) {
    if (expression.startsWith('(') && expression.endsWith(')')) {
      return _parseExpression(expression.substring(1, expression.length - 1));
    }
    if (int.tryParse(expression) != null) {
      return ValueExpression(int.parse(expression));
    }
    if (double.tryParse(expression) != null) {
      return ValueExpression(double.parse(expression));
    }
    return ValueExpression(expression);
  }

  static List<String> _splitExpression(
      String expression, String operator1, String operator2) {
    List<String> parts = [];
    int depth = 0;
    int start = 0;
    for (int i = 0; i < expression.length; i++) {
      if (expression[i] == '(') depth++;
      if (expression[i] == ')') depth--;
      if (depth == 0 &&
          (expression[i] == operator1 || expression[i] == operator2)) {
        parts.add(expression.substring(start, i));
        parts.add(expression[i]);
        start = i + 1;
      }
    }
    parts.add(expression.substring(start));
    return parts;
  }
}

class ArithmeticExpressionEvaluator {
  static dynamic evaluate(String expression, Map<String, dynamic> valueMap) {
    try {
      var exp = ExpressionFactory.parse(expression);
      final result = exp.evaluate(valueMap);
      Log.f('Result of "$expression": $result');
      return result;
    } catch (e) {
      Log.e('Error evaluating arithmetic expression: $expression $e');
      return null;
    }
  }
}

// Example usage
void main() {
  var valueMap = {
    'a': '5',
    'b': '3',
    'c': '2',
    'corneaRetrievalRequest.hemodilution.properties.bloodProducts.metrics.volume_1725961528028':
        '10',
    'corneaRetrievalRequest.hemodilution.properties.bloodProducts.metrics.volume_1725961849814':
        '20',
    'corneaRetrievalRequest.hemodilution.properties.bloodProducts.metrics.volume_1725962008657':
        null,
    'corneaRetrievalRequest.hemodilution.properties.crystalloid.totalTranfused':
        '15',
    'corneaRetrievalRequest.hemodilution.properties.bloodProducts.totalTranfused':
        '25'
  };

  var expression1 = 'a + b * (c - 1)';
  var expression2 = '(a + b) * c';
  var expression3 = 'a + (b * c) - (a / b)';
  var expression4 =
      'corneaRetrievalRequest.hemodilution.properties.bloodProducts.metrics.volume_1725961528028 + corneaRetrievalRequest.hemodilution.properties.bloodProducts.metrics.volume_1725961849814 + corneaRetrievalRequest.hemodilution.properties.bloodProducts.metrics.volume_1725962008657';
  var expression5 = 'a'; // Simple value expression
  var expression6 =
      'corneaRetrievalRequest.hemodilution.properties.crystalloid.totalTranfused + corneaRetrievalRequest.hemodilution.properties.bloodProducts.totalTranfused';

  var result1 = ArithmeticExpressionEvaluator.evaluate(expression1, valueMap);
  var result2 = ArithmeticExpressionEvaluator.evaluate(expression2, valueMap);
  var result3 = ArithmeticExpressionEvaluator.evaluate(expression3, valueMap);
  var result4 = ArithmeticExpressionEvaluator.evaluate(expression4, valueMap);
  var result5 = ArithmeticExpressionEvaluator.evaluate(expression5, valueMap);
  var result6 = ArithmeticExpressionEvaluator.evaluate(expression6, valueMap);

  print('Result of "$expression1": $result1'); // Output: 8
  print('Result of "$expression2": $result2'); // Output: 16
  print('Result of "$expression3": $result3'); // Output: 10.333333333333334
  print('Result of "$expression4": $result4'); // Output: 30
  print('Result of "$expression5": $result5'); // Output: 5
  print('Result of "$expression6": $result6'); // Output: 40
}
