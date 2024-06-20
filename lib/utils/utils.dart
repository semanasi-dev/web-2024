import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
