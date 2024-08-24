import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganInventoryTimline extends ConsumerWidget {
  const OrganInventoryTimline({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Tissue #123"),
    //   ),
    //   body: ref.watch(ebOrganInventoryTimlineProvider("")).when(
    //         data: (List<EBTimeLineCaseModel> data) {
    //           return null;

    //           // return CaseTimeLineWidget(
    //           //   caseTimeLine: data,
    //           //   onCaseSelected: (EBTimeLineCaseModel event) =>
    //           //       _handleCaseSelected(context, event),
    //           // );
    //         },
    //         loading: () => const Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //         error: (error, stackTrace) => Center(
    //           child: Text('Error: $error'),
    //         ),
    //       ),
    // );
  }

  // _handleCaseSelected(BuildContext context, EBTimeLineCaseModel event) {
  //   final navigator = Navigator.of(context);
  //   navigator.push(
  //     MaterialPageRoute(
  //       builder: (context) => EBFormManagePage(
  //         title: event.stageName,
  //       ),
  //     ),
  //   );
  //   // switch (event.stageName) {
  //   //   case CaseTimeLineSteps.INTIMATION:

  //   //     break;
  //   //   default:
  //   //     break;
  //   // }
  // }
}
