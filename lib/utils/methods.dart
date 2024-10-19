import 'package:url_launcher/url_launcher.dart';

class Methods {
  Future<void> goToWebpage(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }
}
