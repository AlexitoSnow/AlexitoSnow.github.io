import 'package:flutter/material.dart';
import 'package:snow_portfolio/config/config.dart';
import 'social_button_bar.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        Flex(
          direction: context.isPhone ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: const [
            Text('Copyright © 2024 | Alexander Nieves'),
            SocialButtonBar(),
          ],
        ).paddingSymmetric(horizontal: context.width * 0.01),
      ],
    );
  }
}
