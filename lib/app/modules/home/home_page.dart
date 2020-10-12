import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_dart_digital/app/modules/home/home_controller.dart';
import 'package:teste_dart_digital/app/widgets/custom_card.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        height: Get.height,
        width: Get.width,
        child: Obx(() => ListView.builder(
              itemBuilder: (context, index) {
                return CustomCardWidget(
                    name: controller.repositorios[index].name,
                    description: controller.repositorios[index].description,
                    url: controller.repositorios[index].url);
              },
              itemCount: controller.repositorios.length,
            )),
      ),
    );
  }
}
