import 'package:flutter/material.dart';

import '../enum/enum.dart';
import 'component/side_drawer.dart';
import 'home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.deviceType});

  final DeviceType deviceType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: const HomeBody(),
      drawer: deviceType == DeviceType.compact ? const HomeSideDrawer() : null,
    );
  }
}
