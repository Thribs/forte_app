import 'package:forte/data/forte.dart';
import 'package:forte/resources/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class Util {

  static Future openBrowserUrl(url, {bool inApp = false}) async {
    Uri uri = Uri.parse(url);
    if (!await canLaunchUrl(uri)) {
      throw Exception(Strings.deviceUnableToOpenUrl(url));
    }
    if (!await launchUrl(uri)) {
      throw Exception(Strings.failedToOpenUrl(url));
    }
  }

  static Future callSupportWhatsapp({String? message = ""}) async {
    String phoneNumber = Forte.supportPhoneNumber;
    String url = "https://wa.me/$phoneNumber?text=$message";
    openBrowserUrl(url, inApp: true);
  }
}
