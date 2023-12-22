// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:uni_links/uni_links.dart'; // Package for handling deep links

// Future<void> initPlatformState() async {
//   // Attach a listener to handle incoming deep links
//   // It's recommended to use try-catch blocks to handle exceptions
//   try {
//     final initialLink = await getInitialLink();
//     if (initialLink != null) {
//       // Handle the initial deep link if the app was launched from a deep link
//       handleDeepLink(initialLink);
//     }
//   } on PlatformException {
//     // Handle exception if any
//   }

//   // Attach a listener to handle subsequent deep links while the app is running
//   // This will be triggered when the app is already open and a deep link is clicked
//   uriLinkStream.listen((uri) {
//     if (uri != null) {
//       handleDeepLink(uri.toString());
//     }
//   }, onError: (err) {
//     // Handle if any
//   });
// }

// void handleDeepLink(String link) {
//   // Handle the deep link URL here
//   // You can navigate to a specific screen or perform any required action
//   debugPrint("Incoming Link: $link");
// }
