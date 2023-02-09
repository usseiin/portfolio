import 'package:flutter/material.dart';

import '../enum/enum.dart';
import 'component/side_drawer.dart';
import 'home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceType = context.deviceTypeFromWidth();
    return Scaffold(
      appBar: const HomeAppBar(),
      body: AppBody(deviceType),
      drawer: deviceType == DeviceType.compact ? const HomeSideDrawer() : null,
    );
  }
}
