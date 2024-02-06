import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snow_portfolio/config/config.dart';
import 'package:snow_portfolio/presentation/controllers/controllers.dart';

class AboutMeView extends GetView<AboutMeController> {
  const AboutMeView({super.key});
  @override
  Widget build(BuildContext context) {
    isPhone = context.width <= 800;
    return ResponsiveFlex(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gretting,
              name,
              title,
              presentation,
              DevIconsList(
                iconList: controller.softwareTechnologies,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 7,
          child: LottieBuilder.network(
            'https://lottie.host/afb234a8-a244-45e5-ae62-87f71489a5f5/4QvEx2vt3I.json',
            alignment: Alignment.centerRight,
          ),
        ),
      ],
    );
  }

  Widget get presentation {
    return SizedBox(
      width: Get.width * (isPhone ? 0.8 : 0.5),
      child: AutoSizeText(
        key: Key(controller.presentation),
        controller.presentation,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.start,
        maxLines: null,
      ),
    );
  }

  Text get title {
    return Text(
      controller.title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }

  Text get name {
    return Text(
      controller.name,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }

  Widget get gretting {
    return AnimatedTextKit(
      key: Key(controller.gretting),
      isRepeatingAnimation: false,
      animatedTexts: [
        TypewriterAnimatedText(
          controller.gretting,
          textStyle: GoogleFonts.inconsolata(
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          speed: const Duration(milliseconds: 200),
        ),
      ],
    );
  }
}

bool isPhone = false;