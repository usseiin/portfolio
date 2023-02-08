import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../enum/enum.dart';
import '../constants/app_color.dart';
import '../provider/app_state.dart';
import '../ui/component/narrow_side_widget.dart';
import 'about.dart';
import 'component/wide_side_widget.dart';
import 'project.dart';

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
        child: Row(
          children: [
            if (menu == DeviceType.medium) const NarrowSideWidget(),
            if (menu == DeviceType.expanded) const WideSideWidget(),
            Expanded(
              child: menu == Menu.about
                  ? const About()
                  : menu == Menu.project
                      ? const Project()
                      : Column(
                          children: const [],
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
