/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

abstract class AvailabilityRepository {
  Future<bool> postMarkMyAvailability(bool? available, int? userId, String? mobile);
}
