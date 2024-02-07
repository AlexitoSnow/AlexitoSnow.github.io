import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:snow_portfolio/config/config.dart';
import 'package:snow_portfolio/presentation/bloc/bloc.dart';
import 'gretting.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});
  @override
  Widget build(BuildContext context) {
    isPhone = context.width <= 800;
    final controller = context.watch<AboutMeCubit>();
    return ResponsiveFlex(
      key: ValueKey(context.watch<HomeCubit>().state.currentLocale.toString()),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gretting(),
            name(controller.name),
            title(controller.title),
            presentation(context),
          ],
        ).paddingOnly(left: 8.0),
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

  Widget presentation(BuildContext context) {
    final controller = context.watch<AboutMeCubit>();
    return SizedBox(
      width: context.width * (isPhone ? 0.8 : 0.5),
      child: AutoSizeText(
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

  Text title(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }

  Text name(String name) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }
}

bool isPhone = false;
