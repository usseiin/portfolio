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
          childAspectRatio: 5 / 7,
        ),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          var project = projects[index];

          var buildCard = Card(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 5 / 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(project.image),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35 * MediaQuery.of(context).textScaleFactor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        project.name,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
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
