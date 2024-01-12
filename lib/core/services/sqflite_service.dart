import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:password_generator/password_generator.dart';

class SqfLiteService {
  static final _passwordGenerator = PasswordGenerator(
    length: 21,
    hasCapitalLetters: true,
    hasNumbers: true,
    hasSmallLetters: true,
    hasSymbols: true,
  );
  static const _storage = FlutterSecureStorage();
  static const String _passwordkey = 'sq_pass';
  static String? _password;
  static String? get password => _password;
  SqfLiteService._();

  static Future<void> init() async {
    final isPasswordAvailable = await SqfLiteService._isPasswordAvailable();
    if (!isPasswordAvailable) {
      await _generateSecurePassword();
    } else {
      _password = await _storage.read(key: _passwordkey);
    }
  }

  static Future<void> _generateSecurePassword() async {
    _password = _passwordGenerator.generatePassword();
    await _storage.write(key: _passwordkey, value: _password);
  }

  static Future<bool> _isPasswordAvailable() async {
    final password = await _storage.read(key: _passwordkey);
    return password != null;
  }
}
