import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_dart_digital/app/modules/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('HOME')),
    );
  }
}
