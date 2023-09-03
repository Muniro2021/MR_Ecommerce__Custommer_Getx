import 'package:ecommercecourse/controller/productdetails_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/functions/translatefatabase.dart';
import 'package:ecommercecourse/view/widget/productdetails/priceandcount.dart';
import 'package:ecommercecourse/view/widget/productdetails/toppageproductdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());

    return Scaffold(
        bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 40,
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColor.secondColor,
                onPressed: () {
                  Get.toNamed(AppRoute.cart);
                },
                child: Text(
                  "52".tr,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))),
        body: GetBuilder<ProductDetailsControllerImp>(
            builder: (controller) => ListView(children: [
                  const TopProductPageDetails(),
                  const SizedBox(
                    height: 100,
                  ),
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: Container(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                    "${translateDatabase(controller.itemsModel.itemsNameAr, controller.itemsModel.itemsName)}",
                                    style: const TextStyle(
                                      fontSize: 40,
                                      color: AppColor.fourthColor,
                                      
                                    ),textAlign: TextAlign.center,),
                              ),
                              const SizedBox(height: 10),
                              PriceAndCountItems(
                                  onAdd: () {
                                    controller.add();
                                  },
                                  onRemove: () {
                                    controller.remove();
                                  },
                                  price:
                                      "${controller.itemsModel.itemsPriceDiscount}",
                                  count: "${controller.countitems}"),
                              const SizedBox(height: 10),
                              Text(
                                  "${translateDatabase(controller.itemsModel.itemsDescAr, controller.itemsModel.itemsDesc)}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: AppColor.grey2)),
                              const SizedBox(height: 10),
                            ]),
                      ))
                ])));
  }
}
