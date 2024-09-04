abstract class Expression {
  bool evaluate(Map<String, dynamic> valueMap);
}

class EqualsExpression implements Expression {
  final String key;
  final dynamic value;

  EqualsExpression(this.key, this.value);

  @override
  bool evaluate(Map<String, dynamic> valueMap) {
    return valueMap[key] == value;
  }
}

class AndExpression implements Expression {
  final Expression left;
  final Expression right;

  AndExpression(this.left, this.right);

  @override
  bool evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) && right.evaluate(valueMap);
  }
}

class OrExpression implements Expression {
  final Expression left;
  final Expression right;

  OrExpression(this.left, this.right);

  @override
  bool evaluate(Map<String, dynamic> valueMap) {
    return left.evaluate(valueMap) || right.evaluate(valueMap);
  }
}

class ExpressionFactory {
  static Expression parse(String expression) {
    // Simplified parser for demonstration purposes
    if (expression.contains('&&')) {
      var parts = expression.split('&&');
      return AndExpression(parse(parts[0].trim()), parse(parts[1].trim()));
    } else if (expression.contains('||')) {
      var parts = expression.split('||');
      return OrExpression(parse(parts[0].trim()), parse(parts[1].trim()));
    } else if (expression.contains('==')) {
      var parts = expression.split('==');
      return EqualsExpression(parts[0].trim(), parts[1].trim() == 'true');
    } else {
      throw UnsupportedError('Unsupported expression: $expression');
    }
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
    return false;
  }
}
