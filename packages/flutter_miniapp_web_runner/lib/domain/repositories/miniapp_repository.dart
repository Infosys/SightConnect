import 'package:dartz/dartz.dart';
import 'package:flutter_miniapp_web_runner/core/exception.dart';

abstract class MiniAppRepository {
  Future<Either<Failure, String>> saveMiniApp(String path);
}
