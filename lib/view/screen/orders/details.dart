import 'package:ecommercecourse/controller/orders/details_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/translatefatabase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    OrderDetailsController controller = Get.put(OrderDetailsController());
    return Scaffold(
      appBar: AppBar(
        title: Text("61".tr, style: const TextStyle(color: Colors.white),),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GetBuilder<OrderDetailsController>(
            builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  Card(
                    elevation: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10
                      ),
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "62".tr,
                                    style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(Jiffy.parse(controller
                                          .ordersModel.ordersDatetime!)
                                      .MMMMEEEEd),
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              height: 10,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            height: 300,
                            child: SingleChildScrollView(
                              child: Table(
                                children: [
                                TableRow(children: [
                                  Text(
                                    "63".tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "64".tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "65".tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ]),
                                ...List.generate(
                                    controller.data.length,
                                    (index) => TableRow(children: [
                                          Text(
                                            "${translateDatabase(controller.data[index].itemsNameAr, controller.data[index].itemsName)}",
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(
                                            "${controller.data[index].countitems}",
                                            textAlign: TextAlign.center,
                                          ),
                                          Text(
                                            "${controller.data[index].itemsprice}",
                                            textAlign: TextAlign.center,
                                          ),
                                        ])),
                              ]),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              height: 20,
                              thickness: 1,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "66".tr,
                                  style: const TextStyle(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                Text(
                                  "${controller.ordersModel.ordersTotalprice}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  " \$",
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  controller.ordersModel.ordersType == "0"
                      ? Card(
                          elevation: 2,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: ListTile(
                              title: Text(
                                "67".tr,
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                  "${controller.ordersModel.addressCountry} - ${controller.ordersModel.addressCity} - ${controller.ordersModel.addressStreet}"),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          )),
    );
  }
}
