import 'package:flutter/material.dart';

class OrganInventoryOverview extends StatelessWidget {
  const OrganInventoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    // Example inventory stats data
    final inventoryStats = [
      {'title': 'Total Corneas', 'count': 50},
      {'title': 'Available Corneas', 'count': 30},
      {'title': 'Pending Requests', 'count': 10},
      {'title': 'Completed Requests', 'count': 10},
    ];

    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.4,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final stat = inventoryStats[index];
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        stat['title'] as String ?? '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        (stat['count'] as int).toString(),
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: inventoryStats.length,
          ),
        ),
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
