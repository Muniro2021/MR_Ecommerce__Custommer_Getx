import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class OrderDetailsData {
  Crud crud;
  OrderDetailsData(this.crud);
  getData(String ordersid) async {
    var response = await crud.postData(AppLink.ordersdetails, {
      "ordersid":ordersid
    });
    return response.fold((l) => l, (r) => r);
  }
}