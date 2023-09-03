import 'dart:io';

import 'package:ecommercecourse/controller/homescreen_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButton: FloatingActionButton(
                  backgroundColor: AppColor.primaryColor,
                  onPressed: () {
                    Get.toNamed(AppRoute.cart);
                  },
                  child: const Icon(Icons.shopping_basket_outlined)),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: WillPopScope(
                  onWillPop: () {
                    Get.defaultDialog(
                      onCancel: () {},
                      title: "86".tr,
                      titleStyle: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                      confirmTextColor: Colors.white,
                      middleText: "87".tr,
                      cancelTextColor: AppColor.secondColor,
                      middleTextStyle: const TextStyle(color: Colors.black),
                      onConfirm: () {
                        exit(0);
                      },
                    );
                    return Future.value(false);
                  },
                  child: controller.listPage.elementAt(controller.currentpage)),
            ));
  }
}
