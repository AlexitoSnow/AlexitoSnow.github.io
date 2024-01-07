import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../widgets/activity_list.dart';
import '../controllers/volunteering_controller.dart';

class VolunteeringView extends GetView<VolunteeringController> {
  const VolunteeringView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: ActivityList(controller.volunteeringList),
            ),
            Expanded(
              flex: 4,
              child: LottieBuilder.network(
                'https://lottie.host/6821aded-7d39-493d-84b9-d9e2d6af0342/7AtgnPOrZn.json',
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
