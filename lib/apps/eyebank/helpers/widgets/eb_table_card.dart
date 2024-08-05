import 'package:flutter/material.dart';

class EbTableCard extends StatelessWidget {
  const EbTableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Case ID: 12345",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.timeline),
                  tooltip: 'View Timeline',
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Donor: Jane Doe",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Age: 34",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Location: New York, USA",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.date_range,
                  color: Colors.grey[600],
                  size: 16.0,
                ),
                const SizedBox(width: 5.0),
                Text(
                  "Date: 2021-09-01",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Align(
              alignment: Alignment.centerRight,
              child: Chip(
                label: Text(
                  "Pending",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
