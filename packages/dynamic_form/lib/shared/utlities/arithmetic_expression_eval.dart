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
    if (value is String && valueMap.containsKey(value)) {
      return valueMap[value];
    }
    return value;
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
    return _parseAdditionSubtraction(expression);
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
      return exp.evaluate(valueMap);
    } catch (e) {
      Log.e('Error evaluating arithmetic expression: $expression $e');
      return null;
    }
  }
}
