import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:flutter_miniapp_web_runner/presentation/provider/miniapp_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MiniAppGridView extends ConsumerWidget {
  const MiniAppGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(miniAppProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MiniAppGridView'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: model.miniApps.allMiniApps.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          var miniapp = model.miniApps.allMiniApps[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return MiniAppDisplayPage(
                      miniApp: miniapp,
                    );
                  },
                ),
              );
            },
            child: Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.alarm),
                    const SizedBox(height: 8),
                    Text(
                      miniapp.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
