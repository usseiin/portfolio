import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../enum/enum.dart';
import '../constants/app_color.dart';
import '../provider/app_state.dart';
import '../ui/component/narrow_side_widget.dart';
import 'component/wide_side_widget.dart';
import 'home_content.dart';
import 'project_page.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  final Size size = const Size.fromHeight(65);

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      elevation: 0,
      title: Consumer(
        builder: (context, ref, child) => Text(
          ref.watch(appState).title,
          style: const TextStyle(color: Colors.black87),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("https://github.com/usseiin"));
          },
          icon: const FaIcon(FontAwesomeIcons.github),
        ),
        IconButton(
          onPressed: () {
            _launchInBrowser(Uri.parse("https://twitter.com/_usseiin"));
          },
          icon: const FaIcon(FontAwesomeIcons.twitter),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  @override
  Size get preferredSize => size;
}

class AppBody extends ConsumerStatefulWidget {
  const AppBody(this.deviceType, {super.key});

  final DeviceType deviceType;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends ConsumerState<AppBody> {
  @override
  Widget build(BuildContext context) {
    final deviceType = widget.deviceType;
    final menu = ref.watch(appState);
    return SafeArea(
      child: Row(
        children: [
          if (deviceType == DeviceType.medium) const NarrowSideWidget(),
          if (deviceType == DeviceType.expanded) const WideSideWidget(),
          Expanded(
            child: menu == Menu.project
                ? const ProjectPage()
                : const HomeContent(),
          ),
        ],
      ),
    );
  }
}
