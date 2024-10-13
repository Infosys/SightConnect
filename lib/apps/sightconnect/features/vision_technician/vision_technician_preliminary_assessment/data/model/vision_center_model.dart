/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

class VisionCenterModel {
   String? type;
   bool? checked;
   String? completeAddress;
   String? phoneno;
   String? time;

  VisionCenterModel(
      {required this.type,
      required this.checked,
      required this.completeAddress,
      required this.phoneno,
      required this.time});
}
