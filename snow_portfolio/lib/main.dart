import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/bindings_builders.dart';

void main() async {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snow Portfolio',
      theme: ThemeData(
        colorSchemeSeed: Colors.orange,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilders.bindings,
    );
  }

  
}
