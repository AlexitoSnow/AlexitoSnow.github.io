import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveFlex extends StatelessWidget {
  const ResponsiveFlex(
      {super.key,
      required this.children,
      this.mainAxisAlignment = MainAxisAlignment.start});
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final isPhone = context.width <= 800;
    debugPrint('isPhone: $isPhone');
    return Flex(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: mainAxisAlignment,
      direction: isPhone ? Axis.vertical : Axis.horizontal,
      children: children,
    );
  }
}
