import 'package:ussein_portfolio/constants/app_string.dart';

class Project {
  final String image;
  final String name;
  final String description;
  final PLanguage language;

  Project({
    required this.image,
    required this.name,
    required this.description,
    required this.language,
  });
}

enum PLanguage { flutter, kotlin, dart }

var projects = <Project>[
  Project(
    image: "${imagePath}chekout_1.png",
    name: "ChekOut",
    description: "flutter app that allow fiat and crypto payment",
    language: PLanguage.flutter,
  ),
];
