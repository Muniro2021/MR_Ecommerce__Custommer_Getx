class AddressModel {
  String? addressId;
  String? addressUsersid;
  String? addressName;
  String? addressCountry;
  String? addressCity;
  String? addressStreet;

  AddressModel(
      {this.addressId,
      this.addressUsersid,
      this.addressName,
      this.addressCountry,
      this.addressCity,
      this.addressStreet,});

  AddressModel.fromJson(Map<String, dynamic> json) {
    addressId = json['address_id'];
    addressUsersid = json['address_usersid'];
    addressName = json['address_name'];
    addressCountry = json['address_country'];
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address_id'] = addressId;
    data['address_usersid'] = addressUsersid;
    data['address_name'] = addressName;
    data['address_country'] = addressCountry;
    data['address_city'] = addressCity;
    data['address_street'] = addressStreet;
    return data;
  }
}