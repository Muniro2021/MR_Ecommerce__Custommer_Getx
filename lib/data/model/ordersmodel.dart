class OrdersModel {
  String? ordersId;
  String? ordersUsersid;
  String? ordersAddressid;
  String? ordersType;
  String? ordersDeliveryprice;
  String? ordersPrice;
  String? ordersTotalprice;
  String? ordersCouponid;
  String? ordersPaymentmethod;
  String? ordersStatus;
  String? ordersRating;
  String? ordersComment;
  String? ordersDatetime;
  String? addressId;
  String? addressUsersid;
  String? addressName;
  String? addressCountry;
  String? addressCity;
  String? addressStreet;

  OrdersModel(
      {this.ordersId,
      this.ordersUsersid,
      this.ordersAddressid,
      this.ordersType,
      this.ordersDeliveryprice,
      this.ordersPrice,
      this.ordersTotalprice,
      this.ordersCouponid,
      this.ordersPaymentmethod,
      this.ordersStatus,
      this.ordersRating,
      this.ordersComment,
      this.ordersDatetime,
      this.addressId,
      this.addressUsersid,
      this.addressName,
      this.addressCountry,
      this.addressCity,
      this.addressStreet});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    ordersId = json['orders_id'];
    ordersUsersid = json['orders_usersid'];
    ordersAddressid = json['orders_addressid'];
    ordersType = json['orders_type'];
    ordersDeliveryprice = json['orders_deliveryprice'];
    ordersPrice = json['orders_price'];
    ordersTotalprice = json['orders_totalprice'];
    ordersCouponid = json['orders_couponid'];
    ordersPaymentmethod = json['orders_paymentmethod'];
    ordersStatus = json['orders_status'];
    ordersRating = json['orders_rating'];
    ordersComment = json['orders_comment'];
    ordersDatetime = json['orders_datetime'];
    addressId = json['address_id'];
    addressUsersid = json['address_usersid'];
    addressName = json['address_name'];
    addressCountry = json['address_country'];
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orders_id'] = ordersId;
    data['orders_usersid'] = ordersUsersid;
    data['orders_addressid'] = ordersAddressid;
    data['orders_type'] = ordersType;
    data['orders_deliveryprice'] = ordersDeliveryprice;
    data['orders_price'] = ordersPrice;
    data['orders_totalprice'] = ordersTotalprice;
    data['orders_couponid'] = ordersCouponid;
    data['orders_paymentmethod'] = ordersPaymentmethod;
    data['orders_status'] = ordersStatus;
    data['orders_rating'] = ordersRating;
    data['orders_comment'] = ordersComment;
    data['orders_datetime'] = ordersDatetime;
    data['address_id'] = addressId;
    data['address_usersid'] = addressUsersid;
    data['address_name'] = addressName;
    data['address_country'] = addressCountry;
    data['address_city'] = addressCity;
    data['address_street'] = addressStreet;
    return data;
  }
}
