import 'package:ecommercecourse/controller/orders/archive_controller.dart';
import 'package:ecommercecourse/controller/orders/pending_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/view/widget/orders/orderslistcard.dart';
import 'package:ecommercecourse/view/widget/orders/orderslistcardarchive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArchiveOrders extends StatelessWidget {
  const ArchiveOrders({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ArchiveOrdersController());
    return Scaffold(
      appBar: AppBar(
        title: Text("85".tr, style: const TextStyle(color: Colors.white),),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<ArchiveOrdersController>(
          builder: (controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) => CardOrdersListArchive(
              listdata: controller.data[index],
            ),
          ),)
        ),
      ),
    );
  }
}

