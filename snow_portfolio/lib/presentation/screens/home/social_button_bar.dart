import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snow_portfolio/presentation/bloc/bloc.dart';
import 'package:snow_portfolio/presentation/screens/home/social_button.dart';

class SocialButtonBar extends StatelessWidget {
  const SocialButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<HomeCubit>();
    return Row(
      children: [
        SocialButton(
            url: Uri.parse('https://www.github.com/AlexitoSnow/'),
            logo: FontAwesomeIcons.squareGithub,
            tooltip: 'Alexito Snow'),
        SocialButton(
            url: Uri.parse('https://www.linkedin.com/in/alexander-nieves/'),
            logo: FontAwesomeIcons.linkedin,
            tooltip: 'Alexander Nieves'),
        SocialButton(
          url: Uri(
            scheme: 'mailto',
            path: controller.email,
            query: controller.encodeQueryParameters(
              <String, String>{
                'subject': 'Contact Info',
                'body': 'Hi Alexander, I would like to contact you',
              },
            ),
          ),
          logo: Icons.email,
          tooltip: controller.email,
        ),
        SocialButton(
          url: Uri.parse('whatsapp://send?phone=${controller.phone}'),
          logo: FontAwesomeIcons.whatsapp,
          tooltip: controller.phone,
        ),
      ],
    );
  }
}
