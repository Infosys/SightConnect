/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

enum TriageOption { YES, NO }

TriageOption? resolveTriageOptionFromText(String option) {
  option = option.trim().toLowerCase();
  switch (option) {
    case "yes":
      return TriageOption.YES;
    case "no":
      return TriageOption.NO;
    default:
      return null;
  }
}

String resolveTriageOptionText(TriageOption option) {
  switch (option) {
    case TriageOption.YES:
      return "Yes";
    case TriageOption.NO:
      return "No";
    default:
      return "NA";
  }
}