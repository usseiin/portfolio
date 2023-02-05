import 'package:flutter/material.dart';

import 'component/side_drawer.dart';
import 'home_body.dart';

class HomeNarrow extends StatelessWidget {
  const HomeNarrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: HomeBody(),
      drawer: HomeSideDrawer(),
    );
  }
}
