import 'package:flutter/material.dart';

class OrganInventoryOverview extends StatelessWidget {
  const OrganInventoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    // Example inventory stats data
    final inventoryStats = [
      {'title': 'Total Corneas', 'count': 50, 'icon': Icons.visibility},
      {'title': 'Available Corneas', 'count': 30, 'icon': Icons.check_circle},
      {'title': 'Pending Requests', 'count': 10, 'icon': Icons.pending},
      {'title': 'Completed Requests', 'count': 10, 'icon': Icons.done_all},
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.8, // Adjusted aspect ratio
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final stat = inventoryStats[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                        colors: [Colors.teal.shade100, Colors.teal.shade400],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            stat['icon'] as IconData,
                            size: 40.0,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            stat['title'] as String? ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            (stat['count'] as int).toString(),
                            style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
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
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Card(
                  margin: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    contentPadding: const EdgeInsets.all(16.0),
                    tileColor: Colors.teal.withOpacity(0.1),
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Text(
                        '#$index',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      'Cornea Request #$index',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        const Text(
                          'Doctor: Dr. Smith',
                          style: TextStyle(color: Colors.black87),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Details about cornea request #$index',
                          style: const TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward, color: Colors.teal),
                      onPressed: () {},
                    ),
                  ),
                ),
                childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}