import 'package:ecommercecourse/controller/settings_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imgaeasset.dart';
import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends GetView<LocaleController> {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingsController controller1 = Get.put(SettingsController());
    return Container(
      child: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(height: Get.width / 3, color: AppColor.primaryColor),
                Positioned(
                    top: Get.width / 3.9,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[100],
                        backgroundImage: const AssetImage(AppImageAsset.avatar),
                      ),
                    )),
              ]),
          const SizedBox(height: 100),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      ListTile(
                        onTap: () {
                          Get.toNamed(AppRoute.viewAddress);
                        },
                        trailing: const Icon(Icons.location_on_outlined),
                        title: Text("44".tr),
                      ),
                      ListTile(
                        onTap: () {
                          Get.toNamed(AppRoute.pendingOrders);
                        },
                        trailing: const Icon(Icons.card_travel),
                        title: Text("45".tr),
                      ),
                      ListTile(
                        onTap: () {
                          Get.toNamed(AppRoute.archiveOrders);
                        },
                        trailing: const Icon(Icons.archive),
                        title: Text("85".tr),
                      ),
                      ListTile(
                        onTap: () {},
                        trailing: const Icon(Icons.help_outline_rounded),
                        title: Text("46".tr),
                      ),
                      ListTile(
                        onTap: () async {
                          final call = Uri.parse('tel:+963 934840928');
                          if (await canLaunchUrl(call)) {
                            launchUrl(call);
                          } else {
                            throw 'Could not launch $call';
                          }
                        },
                        trailing: const Icon(Icons.phone_callback_outlined),
                        title: Text("47".tr),
                      ),
                      ListTile(
                        onTap: () {
                          controller1.logout();
                        },
                        title: Text("48".tr),
                        trailing: const Icon(Icons.exit_to_app),
                      ),
                    ]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                        child: Text("50".tr),
                        onPressed: () {
                          controller.changeLang("en");
                          Get.offAllNamed(AppRoute.homepage);
                        }),
                    MaterialButton(
                        child: Text("49".tr),
                        onPressed: () {
                          controller.changeLang("ar");
                          Get.offAllNamed(AppRoute.homepage);
                        })
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
