import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_dart_digital/app/modules/home/home_controller.dart';
import 'package:teste_dart_digital/app/theme/app_colors.dart';
import 'package:teste_dart_digital/app/widgets/custom_card.dart';
import 'package:teste_dart_digital/app/widgets/custom_loading.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Obx(() => controller.message != ''
            ? Center(
                child: Text(controller.message),
              )
            : Container(
                margin: EdgeInsets.only(top: 28.0),
                padding: EdgeInsets.all(16.0),
                height: Get.height,
                width: Get.width,
                child: Obx(() => controller.repositorios.length < 1
                    ? CustomLoading()
                    : ListView.builder(
                        itemBuilder: (context, index) {
                          return CustomCardWidget(
                              name: controller.repositorios[index].name,
                              description:
                                  controller.repositorios[index].description,
                              url: controller.repositorios[index].url);
                        },
                        itemCount: controller.countList)),
              )),
        SafeArea(
          child: Container(
            color: Colors.white,
            child: TextField(
              onChanged: (value) => controller.onChangedFiltro(value),
              cursorColor: mainColor,
              maxLines: 1,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: 'Search'),
            ),
          ),
        ),
      ]),
    );
  }
}
