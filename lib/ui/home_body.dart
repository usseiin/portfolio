import 'package:flutter/material.dart';

import '../constants/app_string.dart';
import '../models/profile.dart';
import 'app_logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final logic = AppLogic();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          const Center(
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage(imagePath + profilePicture),
            ),
          ),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Hello, my name is"),
              const SizedBox(height: 4),
              Text(
                "${myProfile.firstName} ${myProfile.lastName}",
                style: theme.textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 450,
                child: Text(
                  introduction,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              logic.downloadResume();
            },
            child: const Text("Download resume"),
          ),
        ],
      ),
    );
  }
}
