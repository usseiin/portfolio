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

  void toTwitter() {
    _launchInBrowser(Uri.parse("https://twitter.com/_usseiin"));
  }

  void toGithub() {
    _launchInBrowser(Uri.parse("https://github.com/usseiin"));
  }

  void toLinkedin() {
    _launchInBrowser(Uri.parse("https://www.linkedin.com/in/kehindehassanbh"));
  }
}
