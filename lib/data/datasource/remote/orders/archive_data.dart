import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class ArchiveOrdersData {
  Crud crud;
  ArchiveOrdersData(this.crud);
  getData(String usersid) async {
    var response =
        await crud.postData(AppLink.archiveorders, {"usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }

  rating(String usersid, String rating, String comment) async {
    var response = await crud.postData(AppLink.rating,
        {"ordersid": usersid, "rating": rating, "comment": comment});
    return response.fold((l) => l, (r) => r);
  }
}
