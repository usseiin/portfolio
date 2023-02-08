import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/app_state.dart';
import 'side_drawer.dart';

class WideSideWidget extends StatelessWidget {
  const WideSideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(.05, 0),
            blurRadius: .1,
          ),
        ],
      ),
      width: 85,
      child: Column(
        children: [
          const SizedBox(
            height: 180,
          ),
          ...menuList
              .map((menu) => Consumer(
                    builder: (contxt, ref, _) {
                      return Column(
                        children: [
                          const Divider(),
                          GestureDetector(
                            onTap: () => {
                              ref.read<AppState>(appState.notifier).update(menu)
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
    );
  }
}
