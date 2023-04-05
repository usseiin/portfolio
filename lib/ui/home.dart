import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/app_string.dart';
import 'app_logic.dart';
import 'app_side_bar.dart';
import 'home_body.dart';
import '../enum/window_size.dart';
import 'project_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceType = context.deviceTypeFromWidth();
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Body(deviceType),
    );
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  final Size size = const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    final logic = AppLogic();
    return AppBar(
      title:
          SizedBox(height: 65, child: Image.asset("${imagePath}logo_uc.png")),
      actions: [
        IconButton(
          onPressed: () {
            logic.goToGithub();
          },
          icon: const FaIcon(FontAwesomeIcons.github),
        ),
        IconButton(
          onPressed: () {
            logic.goToLinkedin();
          },
          icon: const FaIcon(FontAwesomeIcons.linkedin),
        ),
        IconButton(
          onPressed: () {
            logic.goToTwitter();
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

class Body extends StatefulWidget {
  const Body(this.deviceType, {super.key});

  final DeviceType deviceType;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _currentIndex = 0;

  void onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceType = widget.deviceType;
    Widget screen;
    switch (_currentIndex) {
      case 0:
        screen = const HomePage();
        break;
      case 1:
        screen = ProjectPage(
          deviceType: deviceType,
        );
        break;
      default:
        throw UnimplementedError(
          "no widget for the currentIndex: $_currentIndex",
        );
    }
    return SafeArea(
      child: Row(
        children: [
          AppSideBar(
            currentIndex: _currentIndex,
            onTap: onTap,
            showDetails: deviceType == DeviceType.expanded,
          ),
          Expanded(child: screen),
        ],
      ),
    );
  }
}
