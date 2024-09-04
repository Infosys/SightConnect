import 'package:dynamic_form/shared/utlities/log_service.dart';

abstract class Expression {
  bool evaluate(Map<String, dynamic> valueMap);
}

class AndExpression extends Expression {
  final Expression left;
  final Expression right;

  AndExpression(this.left, this.right);

  @override
  bool evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) && right.evaluate(valueMap);
  }
}

class OrExpression extends Expression {
  final Expression left;
  final Expression right;

  OrExpression(this.left, this.right);

  @override
  bool evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) || right.evaluate(valueMap);
  }
}

class EqualsExpression extends Expression {
  final String left;
  final dynamic right;

  EqualsExpression(this.left, this.right);

  @override
  bool evaluate(Map<String, dynamic> valueMap) {
    return valueMap[left] == right;
  }
}

class ExpressionFactory {
  static Expression parse(String expression) {
    try {
      return _parseOrExpression(expression);
    } catch (e) {
      throw FormatException('Invalid expression format: $expression');
    }
  }

  static Expression _parseOrExpression(String expression) {
    var parts = _splitExpression(expression, '||');
    if (parts.length > 1) {
      return OrExpression(_parseOrExpression(parts[0].trim()),
          _parseAndExpression(parts[1].trim()));
    }
    return _parseAndExpression(expression);
  }

  static Expression _parseAndExpression(String expression) {
    var parts = _splitExpression(expression, '&&');
    if (parts.length > 1) {
      return AndExpression(_parseAndExpression(parts[0].trim()),
          _parseEqualsExpression(parts[1].trim()));
    }
    return _parseEqualsExpression(expression);
  }

  static Expression _parseEqualsExpression(String expression) {
    var parts = _splitExpression(expression, '==');
    if (parts.length > 1) {
      return EqualsExpression(parts[0].trim(), _parseValue(parts[1].trim()));
    }
    throw FormatException('Unsupported expression: $expression');
  }

  static List<String> _splitExpression(String expression, String operator) {
    List<String> parts = [];
    int depth = 0;
    int start = 0;
    for (int i = 0; i < expression.length; i++) {
      if (expression[i] == '(') depth++;
      if (expression[i] == ')') depth--;
      if (depth == 0 && expression.substring(i).startsWith(operator)) {
        parts.add(expression.substring(start, i));
        start = i + operator.length;
      }
    }
    parts.add(expression.substring(start));
    return parts;
  }

  static dynamic _parseValue(String value) {
    if (value == 'true') return true;
    if (value == 'false') return false;
    if (int.tryParse(value) != null) return int.parse(value);
    if (double.tryParse(value) != null) return double.parse(value);
    return value;
  }
}

bool computeExp(String? expression, Map<String, dynamic>? valueMap) {
  if (expression == null || valueMap == null) {
    return true;
  }
  try {
    var exp = ExpressionFactory.parse(expression);
    return exp.evaluate(valueMap);
  } catch (e) {
    Log.e('Error evaluating expression: $expression $e');
    return false;
  }
}

// Example expressions:
// "a == 1 && b == 2"
// "a == 1 || b == 2"
// "a == 1 && b == 2 || c == 3"
// "(a == 1 || b == 2) && c == 3"
// "a == true && b == false"
// "a == 1.5 && b == 2"






