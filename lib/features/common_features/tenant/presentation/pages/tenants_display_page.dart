import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TenantsDisplayPage extends HookConsumerWidget {
  const TenantsDisplayPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTenants = useState(false);
    final dummyTenants = List.generate(10, (index) => 'Tenant $index');
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text('Tenants'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
          childAspectRatio: 4,
        ),
        padding: const EdgeInsets.all(8),
        itemCount: dummyTenants.length,
        itemBuilder: (context, index) {
          return CheckboxListTile.adaptive(
            value: selectedTenants.value,
            onChanged: (bool? value) {},
            title: Text(dummyTenants[index]),
            subtitle: Text('Tenant $index'),
          );
        },
      ),
    );
  }
}
