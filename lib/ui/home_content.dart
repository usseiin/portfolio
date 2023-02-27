import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ussein_portfolio/enum/enum.dart';
import 'package:ussein_portfolio/models/profile.dart';
import 'package:ussein_portfolio/provider/app_state.dart';

import '../constants/app_string.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 12),
            Consumer(
              builder: (_, ref, __) {
                final deviceType = context.deviceTypeFromWidth();
                if (deviceType != DeviceType.compact) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage(imagePath + profilePicture),
                      ),
                      SizedBox(
                        height: 12,
                      )
                    ],
                  );
                } else {
                  return Container();
                }
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hello, my name is"),
                const SizedBox(height: 4),
                Text(
                  "${myProfile.firstName} ${myProfile.lastName}",
                  style: Theme.of(context).primaryTextTheme.displaySmall,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 700,
                  child: Text(
                    introduction,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
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
      ),
    );
  }
}
