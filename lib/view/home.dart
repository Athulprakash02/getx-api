import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controller/data_controller.dart';
import 'package:getx_api/view/widgets/productinfo_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX ApiCalling'),
      ),
      body:Obx(() {
        var data = controller.dataModel.value;
        return ProductInfo(dataModel: data)
      ;},)
    );
  }
}
