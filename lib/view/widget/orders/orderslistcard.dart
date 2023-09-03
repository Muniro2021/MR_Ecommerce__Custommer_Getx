import 'package:ecommercecourse/controller/orders/pending_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/data/model/ordersmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersList extends GetView<PendingOrdersController> {
  final OrdersModel listdata;
  const CardOrdersList({super.key, required this.listdata});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      "${'55'.tr} ${listdata.ordersId}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      Jiffy.parse(listdata.ordersDatetime!).fromNow(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('56'.tr),
                  Text(controller.printTypeOrder(listdata.ordersType!)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('57'.tr),
                  Text("${listdata.ordersTotalprice}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('58'.tr),
                  Text("${listdata.ordersDeliveryprice}"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('59'.tr),
                  Text(controller
                      .printPaymentMethod(listdata.ordersPaymentmethod!)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('60'.tr),
                  Text(controller.printOrderStatus(listdata.ordersStatus!),
                      style: TextStyle(
                          color: listdata.ordersStatus != "3"
                              ? Colors.green
                              : Colors.red)),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.orderDetails,
                          arguments: {"ordersModel": listdata});
                    },
                    color: AppColor.primaryColor,
                    textColor: Colors.white,
                    child: Text("53".tr,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  const Spacer(),
                  listdata.ordersStatus == "0"
                      ? MaterialButton(
                          onPressed: () {
                            //
                            controller.deleteOrders(listdata.ordersId!);
                          },
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text("54".tr,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
