import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussein_portfolio/enum/window_size.dart';
import 'package:ussein_portfolio/ui/home_compact.dart';

import 'ui/home_expanded.dart';
import 'ui/home_medium.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData(),
      home: const ResponsiveScreen(),
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceType = context.deviceTypeFromWidth();
    if (deviceType == DeviceType.compact) {
      return const HomeNarrow();
    } else if (deviceType == DeviceType.medium) {
      return const HomeMedium();
    } else {
      return const HomeExpanded();
    }
  }
}
