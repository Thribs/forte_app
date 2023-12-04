import 'package:forte/data/forte.dart';
import 'package:forte/resources/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class Util {

  callSupportWhatsapp() async {
    String phoneNumber = Forte.supportPhoneNumber;
    String url = "https://wa.me/$phoneNumber";
    Uri uri = Uri.parse(url);
    if (!await canLaunchUrl(uri)) {
      throw Exception(
          Strings.deviceUnableToOpenUrl(url));
    }
    if (!await launchUrl(uri)) {
      throw Exception(Strings.failedToOpenUrl(url));
    }
  }

  
}
