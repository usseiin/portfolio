import 'package:flutter/material.dart';

import '../models/project.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        var project = projects[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Container(
                height: 275,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(project.image),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                project.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
