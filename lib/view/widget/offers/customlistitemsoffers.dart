import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/controller/offers_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/translatefatabase.dart';
import 'package:ecommercecourse/data/model/itemsmodel.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItemsOffers extends GetView<OffersController> {
  final ItemsModel itemsModel;
  // final bool active;
  const CustomListItemsOffers({Key? key, required this.itemsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
          elevation: 2,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Name : ",
                              textAlign: TextAlign.start,
                            ),
                            Text(
                                translateDatabase(itemsModel.itemsNameAr,
                                    itemsModel.itemsName),
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    color: AppColor.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Dicount : ",
                              textAlign: TextAlign.start,
                            ),
                            Text("${itemsModel.itemsDiscount} %",
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    color: AppColor.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          const Text(
                            "Price Befor : ",
                            textAlign: TextAlign.start,
                          ),
                          Text("${itemsModel.itemsPrice}",
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: AppColor.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ]),
                        Row(mainAxisSize: MainAxisSize.min, children: [
                          const Text(
                            "Price After : ",
                            textAlign: TextAlign.start,
                          ),
                          Text("${itemsModel.itemsPriceDiscount}",
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  color: AppColor.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Hero(
                        tag: "${itemsModel.itemsId}",
                        child: CachedNetworkImage(
                          width: 130,
                          imageUrl:
                              "${AppLink.imagestItems}/${itemsModel.itemsImage!}",
                          height: 130,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}






























// logical thinking

  // GetBuilder<FavoriteController>(
  //                         builder: (controller) => IconButton(
  //                             onPressed: () {
  //                                 if (controller.isFavorite[itemsModel.itemsId] == "1" ) {
  //                                   controller.setFavorite(
  //                                       itemsModel.itemsId, "0");
  //                                 } else {
  //                                   controller.setFavorite(
  //                                       itemsModel.itemsId, "1");
  //                                 }
  //                             },
  //                             icon: Icon(
  //                               controller.isFavorite[itemsModel.itemsId] == "1"
  //                                   ? Icons.favorite
  //                                   : Icons.favorite_border_outlined,
  //                               color: AppColor.primaryColor,
  //                             )))