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