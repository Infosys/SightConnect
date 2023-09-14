// import 'package:eye_care_for_all/core/providers/auth_page_provider.dart';
// import 'package:eye_care_for_all/shared/pages/splash_page.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class AuthPage extends ConsumerStatefulWidget {
//   static const routeName = '/auth';
//   const AuthPage({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _AuthPageState();
// }

// class _AuthPageState extends ConsumerState<AuthPage> {
//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//       onRefresh: () async {
//         ref.invalidate(authPageProvider);
//       },
//       child: const Scaffold(
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       ),
//     );
//   }
// }
