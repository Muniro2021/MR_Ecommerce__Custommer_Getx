import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/controller/myfavoritecontroller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imgaeasset.dart';
import 'package:ecommercecourse/core/functions/translatefatabase.dart';
import 'package:ecommercecourse/data/model/myfavorite.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListFavoriteItems extends GetView<MyFavoriteController> {
  final MyFavoriteModel itemsModel;
  // final bool active;
  const CustomListFavoriteItems({Key? key, required this.itemsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          //controller.goToPageProductDetails(itemsModel);
        },
        child: Card(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "${itemsModel.itemsId}",
                      child: CachedNetworkImage(
                        imageUrl:
                            "${AppLink.imagestItems}/${itemsModel.itemsImage!}",
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                        translateDatabase(
                            itemsModel.itemsNameAr, itemsModel.itemsName),
                        style: const TextStyle(
                            color: AppColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${itemsModel.itemsPrice} \$",
                            style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "sans")),
                        IconButton(
                            onPressed: () {
                              controller
                                  .deleteFromFavorite(itemsModel.favoriteId!);
                            },
                            icon: const Icon(
                              Icons.delete_outline_outlined,
                              color: AppColor.primaryColor,
                            ))
                      ],
                    )
                  ]),
            ),
            if (itemsModel.itemsDiscount != "0")
              Positioned(
                  top: 6,
                  left: 6,
                  child: Image.asset(
                    AppImageAsset.saleOne,
                    width: 40,
                  ))
          ]),
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