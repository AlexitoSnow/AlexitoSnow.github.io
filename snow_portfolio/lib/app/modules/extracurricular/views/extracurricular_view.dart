import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../widgets/activity_list.dart';
import '../../../widgets/responsive_flex.dart';
import '../controllers/extracurricular_controller.dart';

class ExtracurricularView extends GetView<ExtracurricularController> {
  const ExtracurricularView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveFlex(
      children: [
        Expanded(
          flex: 6,
          child: ActivityList(controller.extracurricularList),
        ),
        Expanded(
          flex: 4,
          child: LottieBuilder.network(
            'https://lottie.host/4a74e00f-d3be-4c87-a10a-ee3233015f03/2gbh4pwphF.json',
            alignment: Alignment.centerRight,
          ),
        ),
      ],
    );
  }
}
