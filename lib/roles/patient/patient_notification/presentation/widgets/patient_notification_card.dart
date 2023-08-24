import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class PatientNotificationCard extends StatelessWidget {
  const PatientNotificationCard({
    super.key,
    required this.data,
    this.onTap,
  });

  final Map<String, dynamic> data;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const CircleAvatar(),
      title: Row(
        children: [
          Expanded(
            child: Text(
              data["title"],
              maxLines: 2,
              softWrap: true,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Text(
            data["time"],
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
      subtitle: Column(
        children: [
          const SizedBox(height: AppSize.ksheight),
          Text(
            data["description"],
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: AppSize.kmheight),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Book Appointment"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Remind Me Later"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
