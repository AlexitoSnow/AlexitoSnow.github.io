import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.url,
    required this.logo,
    this.tooltip,
  });

  final Uri url;
  final IconData logo;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      onPressed: () {
        launchUrl(url);
      },
      icon: FaIcon(logo),
    );
  }
}
