import 'package:ecommercecourse/controller/address/add_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/shared/custombutton.dart';
import 'package:ecommercecourse/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddAddressController controller = Get.put(AddAddressController());
    return Scaffold(
      appBar: AppBar(
        title: Text('69'.tr, style: const TextStyle(color: Colors.white),),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Container(
          padding: const EdgeInsets.all(15),
          child: GetBuilder<AddAddressController>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormAuth(
                      hinttext: "71".tr,
                      labeltext: "71".tr,
                      iconData: Icons.near_me,
                      mycontroller: controller.name,
                      valid: (val) {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "72".tr,
                      labeltext: "72".tr,
                      iconData: Icons.location_history,
                      mycontroller: controller.country,
                      valid: (val) {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "73".tr,
                      labeltext: "73".tr,
                      iconData: Icons.location_city,
                      mycontroller: controller.city,
                      valid: (val) {},
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "74".tr,
                      labeltext: "74".tr,
                      iconData: Icons.streetview,
                      mycontroller: controller.street,
                      valid: (val) {},
                      isNumber: false),
                  CustomButton(
                    text: "70".tr,
                    onPressed: () {
                      controller.addAddress();
                    },
                  )
                ])),
          )),
    );
  }
}
