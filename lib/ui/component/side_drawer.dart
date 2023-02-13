import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/app_string.dart';
import '../../enum/menu.dart';
import '../../models/profile.dart';
import '../../provider/app_state.dart';

class HomeSideDrawer extends StatelessWidget {
  const HomeSideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // width: 180,
      child: ListView(
        children: [
          const AppDrawerHeader(),
          ...menuList
              .map((menu) => Consumer(
                    builder: (contxt, ref, _) {
                      return GestureDetector(
                        onTap: () => {
                          ref.read<AppState>(appState.notifier).update(menu),
                          Navigator.pop(context)
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              child: Text(menu.title),
                            ),
                            const Divider(),
                          ],
                        ),
                      );
                    },
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 37,
            backgroundImage: AssetImage(imagePath + profilePicture),
          ),
          const SizedBox(height: 12),
          Text(
            myProfile.firstName + myProfile.lastName,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 12),
          const Text(
            "Mobile Developer",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

List<Menu> menuList = Menu.values.map((menu) => menu).toList();
