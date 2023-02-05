import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussein_portfolio/ui/component/side_drawer.dart';

import '../provider/app_state.dart';
import 'home_body.dart';

class HomeExpanded extends StatelessWidget {
  const HomeExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(.05, 0),
                  blurRadius: .1,
                ),
              ],
            ),
            width: 75,
            child: Column(
              children: [
                const SizedBox(
                  height: 65,
                ),
                ...menuList
                    .map((menu) => Consumer(
                          builder: (contxt, ref, _) {
                            return Column(
                              children: [
                                const Divider(),
                                GestureDetector(
                                  onTap: () => {
                                    ref
                                        .read<AppState>(appState.notifier)
                                        .update(menu)
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    child: Text(menu.title),
                                  ),
                                ),
                              ],
                            );
                          },
                        ))
                    .toList()
              ],
            ),
          ),
          const Expanded(child: HomeBody()),
        ],
      ),
    );
  }
}
