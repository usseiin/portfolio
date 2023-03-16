import 'package:flutter/material.dart';

import '../enum/window_size.dart';
import '../models/project.dart';

class ProjectPage extends StatelessWidget {
  final DeviceType deviceType;
  const ProjectPage({super.key, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: deviceType == DeviceType.compact ? 1 : 2,
            childAspectRatio: 5 / 6.5,
            mainAxisSpacing: 10),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          var project = projects[index];

          var buildCard = Card(
            elevation: 0.5,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 5 / 5,
                  child: Image.asset(project.image),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          project.name,
                          style: theme.textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          project.description,
                          style: theme.textTheme.labelMedium,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
          return buildCard;
        },
      ),
    );
  }
}
