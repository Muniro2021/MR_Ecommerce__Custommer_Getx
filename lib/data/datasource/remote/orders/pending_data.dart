import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class PendingOrdersData {
  Crud crud;
  PendingOrdersData(this.crud);
  getData(String usersid) async {
    var response =
        await crud.postData(AppLink.pendingorders, {"usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(String ordersid) async {
    var response =
        await crud.postData(AppLink.deleteorders, {"ordersid": ordersid});
    return response.fold((l) => l, (r) => r);
  }
}
