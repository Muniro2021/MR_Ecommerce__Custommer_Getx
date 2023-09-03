import 'package:ecommercecourse/controller/favorite_controller.dart';
import 'package:ecommercecourse/controller/offers_controller.dart';
import 'package:ecommercecourse/core/class/handlingdataview.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/view/screen/home.dart';
import 'package:ecommercecourse/view/widget/customappbar.dart';
import 'package:ecommercecourse/view/widget/offers/customlistitemsoffers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OffersController controller = Get.put(OffersController());
    FavoriteController controllerFav = Get.put(FavoriteController());

    return GetBuilder<OffersController>(
      builder: (controller) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          CustomAppBar(
            mycontroller: controller.search!,
            titleappbar: "Find Product",
            // onPressedIcon: () {},
            onPressedSearch: () {
              controller.onSearchItems();
            },
            onChanged: (val) {
              controller.checkSearch(val);
            },
            onPressedIconFavorite: () {
              Get.toNamed(AppRoute.myfavroite);
            },
          ),
          const SizedBox(height: 10,),
          HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: !controller.isSearch
                ? ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) => CustomListItemsOffers(
                        itemsModel: controller.data[index]),
                  )
                : ListItemsSearch(listdatamodel: controller.listdata),
          ),
        ]),
      ),
    );
  }
}
