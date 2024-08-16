import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/enums/eb_timline_enums.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/provider/eb_case_reject_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EBRejectCaseSheet extends ConsumerWidget {
  final int caseID;
  const EBRejectCaseSheet({required this.caseID, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(ebCaseRejectProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reject Case'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Are you sure you want to reject this case?',
              style: applyRobotoFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<EBRejectCaseReasonEnum>(
              value: model.rejectReason,
              onChanged: (value) {
                model.setRejectReason = value;
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select a reason';
                }
                return null;
              },
              items:
                  model.getRejectReason().map((EBRejectCaseReasonEnum value) {
                return DropdownMenuItem<EBRejectCaseReasonEnum>(
                  value: value,
                  child: Text(value.displayValue),
                );
              }).toList(),
              decoration: const InputDecoration(
                labelText: 'Select reason for rejection',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: model.commentController,
              decoration: const InputDecoration(
                labelText: 'Reason for rejection',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    onConfirm(context, model);
                  },
                  child: const Text('Confirm'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onConfirm(BuildContext context, model) async {
    try {
      if (model.rejectReason == null) {
        Fluttertoast.showToast(msg: 'Please select a reason');
      } else {
        final response = await model.rejectCase(caseID);
        response.fold(
          (l) {
            Fluttertoast.showToast(msg: l.errorMessage);
          },
          (r) {
            Navigator.of(context).pop();

            Fluttertoast.showToast(msg: 'Case rejected successfully');
          },
        );
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
