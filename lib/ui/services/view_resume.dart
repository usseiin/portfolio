import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

import '../../constants/constants.dart';

abstract class ViewResume {
  Future<void> downloadResume();
}

class AppViewResume extends ViewResume {
  @override
  Future<void> downloadResume() async {
    try {
      await launchUrl(
        Uri.parse(
          resumeLink,
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }
}
