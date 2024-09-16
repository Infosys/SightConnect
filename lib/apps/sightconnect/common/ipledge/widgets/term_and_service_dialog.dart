import 'dart:ui';

import 'package:flutter/material.dart';

void showTermAndServiceDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return const TermAndServiceDialog();
    },
  );
}

class TermAndServiceDialog extends StatelessWidget {
  const TermAndServiceDialog({super.key});

  @override
  Widget build(BuildContext context) {
    const dummyPolicy =
        'Ut incididunt sunt nisi cupidatat esse velit et et deserunt officia laboris pariatur esse aliquip. Dolor ea non nisi Lorem elit consequat. Est duis culpa enim adipisicing ea do Lorem ea enim pariatur. Qui qui laboris et officia commodo. Amet labore velit irure est tempor cillum ipsum velit dolore ad ut. Mollit proident consequat Lorem amet incididunt ad ullamco ut veniam sit proident minim. Do culpa ad nisi nulla excepteur in qui. Dolore quis deserunt exercitation incididunt pariatur occaecat qui laborum duis ut anim laboris elit. Lorem irure aliqua laboris pariatur eiusmod ut officia nulla aute non velit. Commodo do eu ea fugiat minim nostrud commodo consectetur occaecat nisi id officia.';
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: AlertDialog(
        title: Row(
          children: [
            const Text('Term and Service'),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Text(
            dummyPolicy,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
