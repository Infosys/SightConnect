/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:camera/camera.dart';

abstract class PatientEyeScanRepository {
  getCataractPrediction({required XFile? eyeImage});
}
