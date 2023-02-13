import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussein_portfolio/provider/app_state.dart';

import '../constants/app_string.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: Theme.of(context).primaryTextTheme.displayMedium,
          ),
          const SizedBox(height: 12),
          Text(
            introduction,
            style: Theme.of(context).primaryTextTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          Consumer(
            builder: (context, ref, _) => ElevatedButton(
              onPressed: () {
                ref.read<AppState>(appState.notifier).showResume();
              },
              child: const Text("Download resume"),
            ),
          ),
        ],
      ),
    );
  }
}
