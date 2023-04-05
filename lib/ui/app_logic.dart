import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

import '../constants/app_string.dart';

class AppLogic {
  Future<void> downloadResume() async {
    try {
      await launchUrl(Uri.parse(resumeLink));
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  void goToTwitter() {
    _launchInBrowser(Uri.parse("https://www.twitter.com/_usseiin"));
  }

  void goToGithub() {
    _launchInBrowser(Uri.parse("https://www.github.com/usseiin"));
  }

  void goToLinkedin() {
    _launchInBrowser(Uri.parse("https://www.linkedin.com/in/hassankehindebh/"));
  }
}
