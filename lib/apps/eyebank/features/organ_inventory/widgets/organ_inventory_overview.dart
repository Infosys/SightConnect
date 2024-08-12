import 'package:flutter/material.dart';

class OrganInventoryOverview extends StatelessWidget {
  const OrganInventoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: const EdgeInsets.all(10.0),
                title: Text('Cornea Request #$index'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Doctor: Dr. Smith'),
                    const SizedBox(height: 8),
                    Text('Details about cornea request #$index'),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
              ),
            ),
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
