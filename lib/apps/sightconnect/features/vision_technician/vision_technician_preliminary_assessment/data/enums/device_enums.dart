/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

enum Status {
  ACTIVE,
  INACTIVE,
  ENTERED_IN_ERROR,
}

enum TestCategory {
  TRIAGE,
}

enum AvailabilityStatus {
  LOST,
  DAMAGED,
  DESTROYED,
  AVAILABLE,
}

enum UnitType{
  DIOPTER, LOGMAR, DECIMAL, SNELLEN
}

enum InputType{
  RANGE, TEXT, NUMBER, DISCRETE
}