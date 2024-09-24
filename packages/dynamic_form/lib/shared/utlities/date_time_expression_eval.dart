import 'package:dynamic_form/shared/utlities/log_service.dart';

abstract class DateTimeExpression {
  DateTime? evaluate();
}

class DateTimeValueExpression extends DateTimeExpression {
  final String? value;

  DateTimeValueExpression(this.value);

  @override
  DateTime? evaluate() {
    if (value == null) {
      return null;
    }
    if (value!.toUpperCase() == 'TODAY') {
      return DateTime.now();
    }
    return DateTime.tryParse(value!);
  }
}

class DateTimeAdditionExpression extends DateTimeExpression {
  final DateTimeExpression left;
  final Duration right;

  DateTimeAdditionExpression(this.left, this.right);

  @override
  DateTime? evaluate() {
    final leftValue = left.evaluate();
    if (leftValue == null) {
      return null;
    }
    return leftValue.add(right);
  }
}

class DateTimeSubtractionExpression extends DateTimeExpression {
  final DateTimeExpression left;
  final Duration right;

  DateTimeSubtractionExpression(this.left, this.right);

  @override
  DateTime? evaluate() {
    final leftValue = left.evaluate();
    if (leftValue == null) {
      return null;
    }
    return leftValue.subtract(right);
  }
}

class DateTimeExpressionFactory {
  static DateTimeExpression parse(String? expression) {
    try {
      return _parseExpression(expression);
    } catch (e) {
      throw FormatException('Invalid expression format: $expression');
    }
  }

  static DateTimeExpression _parseExpression(String? expression) {
    if (expression == null || expression.isEmpty) {
      return DateTimeValueExpression(null);
    }
    expression = expression.replaceAll(' ', '');
    if (_isSimpleValue(expression)) {
      return DateTimeValueExpression(expression);
    }
    return _parseAdditionSubtraction(expression);
  }

  static bool _isSimpleValue(String expression) {
    return DateTime.tryParse(expression) != null || expression.toUpperCase() == 'TODAY';
  }

  static DateTimeExpression _parseAdditionSubtraction(String expression) {
    var parts = _splitExpression(expression, '+', '-');
    if (parts.length > 1) {
      var left = _parseAdditionSubtraction(parts[0]);
      for (int i = 1; i < parts.length; i += 2) {
        var operator = parts[i];
        var right = _parseDuration(parts[i + 1]);
        if (operator == '+') {
          left = DateTimeAdditionExpression(left, right);
        } else if (operator == '-') {
          left = DateTimeSubtractionExpression(left, right);
        }
      }
      return left;
    }
    return DateTimeValueExpression(expression);
  }

  static Duration _parseDuration(String expression) {
    var match = RegExp(r'(\d+)([dDhHmMsS])').firstMatch(expression);
    if (match != null) {
      var value = int.parse(match.group(1)!);
      var unit = match.group(2)!;
      switch (unit) {
        case 'd':
        case 'D':
          return Duration(days: value);
        case 'h':
        case 'H':
          return Duration(hours: value);
        case 'm':
        case 'M':
          return Duration(minutes: value);
        case 's':
        case 'S':
          return Duration(seconds: value);
      }
    }
    throw FormatException('Invalid duration format: $expression');
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

class DateTimeExpressionEvaluator {
  static DateTime? evaluate(String? expression) {
    try {
      var exp = DateTimeExpressionFactory.parse(expression);
      final result = exp.evaluate();
      Log.d('Result of "$expression": $result');
      return result;
    } catch (e) {
      Log.d('Error evaluating date-time expression: $expression $e');
      return null;
    }
  }
}

// Example usage
void main() {
  var expression1 = 'TODAY + 1d';
  var expression2 = 'TODAY + 2h';
  var expression3 = 'TODAY - 30m';
  var expression4 = 'TODAY';
  var expression5 = '';

  var result1 = DateTimeExpressionEvaluator.evaluate(expression1);
  var result2 = DateTimeExpressionEvaluator.evaluate(expression2);
  var result3 = DateTimeExpressionEvaluator.evaluate(expression3);
  var result4 = DateTimeExpressionEvaluator.evaluate(expression4);
  var result5 = DateTimeExpressionEvaluator.evaluate(expression5);

  Log.d('Result of "$expression1": $result1');
  Log.d('Result of "$expression2": $result2');
  Log.d('Result of "$expression3": $result3');
  Log.d('Result of "$expression4": $result4');
  Log.d('Result of "$expression5": $result5');
}