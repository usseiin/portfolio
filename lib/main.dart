import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'ui/home.dart';
import 'ui/themes.dart';

void main() async {
  setPathUrlStrategy();
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "usseiincode",
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const Home(),
    );
  }
}
