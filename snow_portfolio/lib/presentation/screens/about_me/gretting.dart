import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snow_portfolio/presentation/bloc/bloc.dart';

class Gretting extends StatelessWidget {
  const Gretting({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AboutMeCubit>();
    return AnimatedTextKit(
      key: ValueKey(key),
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
