import 'package:ecommercecourse/controller/home_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardHome extends GetView<HomeControllerImp> {
  final String title;
  final String body;
  const CustomCardHome({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          height: 170,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(30)),
          child: ListTile(
            title: Text(title,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
            subtitle: Text(body,
                style: const TextStyle(color: Colors.white, fontSize: 30)),
          ),
        ),
        Positioned(
          top: -30,
          right:controller.lang == "en" ?  -20 : null ,
          left: controller.lang == "ar" ?  -20 : null ,
          child: Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
                color: AppColor.secondColor,
                borderRadius: BorderRadius.circular(200)),
          ),
        )
      ]),
    );
  }
}
