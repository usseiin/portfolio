import 'package:flutter/material.dart';

import '../constants/app_string.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: const [
          Text(
            introduction,
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
