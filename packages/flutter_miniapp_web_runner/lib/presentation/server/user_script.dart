class SuperappUserScript {
  static const String _userScript = """

var miniappModel;
class Communication {
  static isFlutterInAppWebViewReady = false;
}
window.addEventListener("flutterInAppWebViewPlatformReady", function (event) {
  Communication.isFlutterInAppWebViewReady = true;
  console.log("isFlutterInAppWebViewReady: " + Communication.isFlutterInAppWebViewReady);
 window.flutter_inappwebview.callHandler("getPatientRegisterMiniAppModel").then(function (result) {
 console.log(JSON.stringify(result));
 miniappModel = JSON.stringify(result);
  
  });
});

function fetchInjectionData() {
  return miniappModel;
}
 """;

  static String get userScript => _userScript;
}
