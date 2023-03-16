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
    image: "${imagePath}chekout.png",
    name: "ChekOut",
    description: "flutter app that allow fiat and crypto payment",
    language: PLanguage.flutter,
  ),
  Project(
    image: "${imagePath}cooking_recipe.png",
    name: "Cooking recipe",
    description:
        "flutter app that show different recipe keep track of user recipe learning progress.",
    language: PLanguage.flutter,
  ),
  Project(
    image: "${imagePath}dead_and_injured.png",
    name: "Cooking recipe",
    description:
        "flutter game app where user guessed random generated unique 4 digit.",
    language: PLanguage.flutter,
  ),
  Project(
    image: "${imagePath}calc.png",
    name: "Calculator",
    description: "A simple calculator",
    language: PLanguage.flutter,
  ),
];
