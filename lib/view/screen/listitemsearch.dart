import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommercecourse/controller/home_controller.dart';
import 'package:ecommercecourse/data/model/itemsmodel.dart';
import 'package:ecommercecourse/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemSearch({super.key, required this.listdatamodel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listdatamodel.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            controller.goToPageProductDetails(listdatamodel[index]);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: CachedNetworkImage(
                        imageUrl:
                            "${AppLink.imagestItems}/${listdatamodel[index].itemsImage}",
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(listdatamodel[index].itemsName!),
                        subtitle: Text(listdatamodel[index].categoriesName!),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
