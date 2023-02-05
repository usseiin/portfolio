import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_color.dart';
import '../enum/menu.dart';
import '../provider/app_state.dart';
import 'about_page.dart';
import 'project_page.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  final Size size = const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Consumer(
        builder: (context, ref, _) => Text(ref.watch(appState).title),
      ),
    );
  }

  @override
  Size get preferredSize => size;
}

class HomeBody extends ConsumerStatefulWidget {
  const HomeBody({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends ConsumerState<HomeBody> {
  @override
  Widget build(BuildContext context) {
    final menu = ref.watch(appState);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: menu == Menu.about
            ? const AboutPage()
            : menu == Menu.project
                ? const ProjectPage()
                : Column(
                    children: const [],
                  ),
      ),
    );
  }
}
