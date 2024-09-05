import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/presentation/provider/eb_dashbord_menu_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/presentation/widgets/eye_bank_bottom_nav.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/presentation/widgets/eye_bank_dashboard_side_menu.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_eb_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_exit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EBDashboardPage extends HookConsumerWidget {
  const EBDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getEBProfileProvider).when(
          data: (data) {
            return const _EBDashboardLayout();
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          error: (error, stackTrace) {
            logger.e("Error in EBDashboardPage: $error");
            return Scaffold(
              body: Center(
                child: Text("Profile Error: $error"),
              ),
            );
          },
        );
  }
}

class _EBDashboardLayout extends HookConsumerWidget {
  const _EBDashboardLayout();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = Responsive.isMobile(context);
    final menuProvider = ref.watch(ebDashboardMenuProvider);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) return;
        if (menuProvider.selectedMenuItem != 0) {
          menuProvider.setSelectedMenuItem(0);
          return;
        } else {
          showDialog(context: context, builder: (context) => const AppExit());
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: !isMobile,
                child: EyeBankDashboardSideMenu(
                  items: menuProvider.menuItem,
                  onSelected: (index) {
                    menuProvider.setSelectedMenuItem(index);
                  },
                  initialIndex: menuProvider.selectedMenuItem,
                ),
              ),
              if (!isMobile) const SizedBox(width: 8),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: menuProvider.pages[menuProvider.selectedMenuItem],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Visibility(
            visible: isMobile,
            child: EyeBankBottomNav(
              items: menuProvider.menuItem,
              onSelected: (index) {
                menuProvider.setSelectedMenuItem(index);
              },
              initialIndex: menuProvider.selectedMenuItem,
            ),
          ),
        ),
      ),
    );
  }
}
