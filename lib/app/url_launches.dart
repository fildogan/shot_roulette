import 'package:url_launcher/url_launcher.dart';

Future launchEmail() async {
  String email = Uri.encodeComponent("flutterdog00@gmail.com");
  String subject = Uri.encodeComponent("Feedback");
  String body = Uri.encodeComponent("Hi!\nHere is my feedback:\n");
  Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
  try {
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
      throw 'Could not launch email app';
    }
  } on Exception catch (e) {
    print('Error launching email: $e');
    // Handle the error here, such as showing an error message to the user
  }
}

Future<void> launchUrlSite({required String url}) async {
  final Uri urlParsed = Uri.parse(url);

  if (await canLaunchUrl(urlParsed)) {
    await launchUrl(urlParsed);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> launchUrlSiteBrowser({required String url}) async {
  final Uri urlParsed = Uri.parse(url);

  if (await canLaunchUrl(urlParsed)) {
    await launchUrl(urlParsed, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
