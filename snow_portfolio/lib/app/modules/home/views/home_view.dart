import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controllers/home_controller.dart';
import 'top_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.colorScheme.primary.withOpacity(0.5),
        actions: social,
        title: const TopBar(),
      ),
      extendBodyBehindAppBar: true,
      body: PageView.builder(
        restorationId: 'pages',
        pageSnapping: false,
        controller: controller.pageController,
        scrollDirection: Axis.vertical,
        itemCount: controller.pages.length,
        itemBuilder: (context, index) {
          return controller.pages[index];
        },
      ),
      persistentFooterButtons: contact,
    );
  }

  List<Widget> get social {
    return [
      socialButton(
          'https://www.github.com/AlexitoSnow/', FontAwesomeIcons.squareGithub),
      socialButton('https://www.linkedin.com/in/alexander-nieves/',
          FontAwesomeIcons.linkedin),
    ];
  }

  IconButton socialButton(String url, IconData logo) {
    return IconButton(
      onPressed: () {
        launchUrl(Uri.parse(url));
      },
      icon: FaIcon(logo),
    );
  }

  List<Widget> get contact {
    return [
      TextButton.icon(
        icon: const Icon(Icons.email),
        onPressed: () async {
          final Uri emailLaunchUri = Uri(
            scheme: 'mailto',
            path: controller.email,
            query: controller.encodeQueryParameters(<String, String>{
              'subject': 'Contact Info',
              'body': controller.line,
            }),
          );
          await launchUrl(emailLaunchUri);
        },
        label: Text(controller.email),
      ),
      TextButton.icon(
        icon: const FaIcon(FontAwesomeIcons.whatsapp),
        onPressed: () async {
          final message =
              controller.encodeQueryParameters({'text': controller.line})!;
          final phone = controller.phone.replaceAll(' ', '');
          final Uri whatsappLaunchUri =
              Uri.parse('whatsapp://send?phone=$phone&$message');
          await launchUrl(whatsappLaunchUri, webOnlyWindowName: '_self');
        },
        label: Text(controller.phone),
      ),
    ];
  }
}
