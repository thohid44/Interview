// To parse this JSON data, do
//
//     final bookModel = bookModelFromMap(jsonString);

import 'dart:convert';

BookModel bookModelFromMap(String str) => BookModel.fromMap(json.decode(str));

String bookModelToMap(BookModel data) => json.encode(data.toMap());

class BookModel {
  BookModel({
    required this.data,
    required this.message,
  });

  Data data;
  String message;

  factory BookModel.fromMap(Map<String, dynamic> json) => BookModel(
        data: Data.fromMap(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "data": data.toMap(),
        "message": message,
      };
}

class Data {
  Data({
    required this.categories,
    required this.allVendors,
    required this.topReviews,
    required this.adminReviews,
    required this.offerVendors,
  });

  List<Category> categories;
  List<Vendor> allVendors;
  List<dynamic> topReviews;
  List<AdminReview> adminReviews;
  List<Vendor> offerVendors;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromMap(x))),
        allVendors: List<Vendor>.from(
            json["all_vendors"].map((x) => Vendor.fromMap(x))),
        topReviews: List<dynamic>.from(json["top_reviews"].map((x) => x)),
        adminReviews: List<AdminReview>.from(
            json["admin_reviews"].map((x) => AdminReview.fromMap(x))),
        offerVendors: List<Vendor>.from(
            json["offer_vendors"].map((x) => Vendor.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "categories": List<dynamic>.from(categories.map((x) => x.toMap())),
        "all_vendors": List<dynamic>.from(allVendors.map((x) => x.toMap())),
        "top_reviews": List<dynamic>.from(topReviews.map((x) => x)),
        "admin_reviews": List<dynamic>.from(adminReviews.map((x) => x.toMap())),
        "offer_vendors": List<dynamic>.from(offerVendors.map((x) => x.toMap())),
      };
}

class AdminReview {
  AdminReview({
    required this.id,
    required this.customerName,
    required this.image,
    required this.description,
    required this.status,
  });

  int id;
  String customerName;
  String image;
  String description;
  String status;

  factory AdminReview.fromMap(Map<String, dynamic> json) => AdminReview(
        id: json["id"],
        customerName: json["customer_name"],
        image: json["image"],
        description: json["description"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "customer_name": customerName,
        "image": image,
        "description": description,
        "status": status,
      };
}

class Vendor {
  Vendor({
    required this.id,
    required this.role,
    required this.usertype,
    this.admintype,
    required this.providertype,
    required this.icProviderId,
    required this.name,
    required this.email,
    required this.providerId,
    required this.provider,
    required this.mobile,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.gender,
    required this.image,
    required this.businessName,
    required this.businessUrl,
    required this.businessLogo,
    required this.businessAbout,
    required this.thumbnailImg,
    required this.maximumTravelDistance,
    required this.travelPolicy,
    required this.serviceLocation,
    required this.rating,
    required this.lastSeen,
    required this.status,
    required this.route,
    required travelFee,
  });

  int id;
  final role;
  String usertype;
  dynamic admintype;
  String providertype;
  final icProviderId;
  final name;
  final email;
  final providerId;
  final provider;
  final mobile;
  final address;
  final latitude;
  final longitude;
  dynamic gender;
  String image;
  final businessName;
  final businessUrl;
  String businessLogo;
  var businessAbout;
  String thumbnailImg;
  String? travelFee;
  dynamic maximumTravelDistance;
  dynamic travelPolicy;
  final serviceLocation;
  final rating;
  final DateTime? lastSeen;
  dynamic status;
  String route;

  factory Vendor.fromMap(Map<String, dynamic> json) => Vendor(
        id: json["id"],
        role: json["role"],
        usertype: json["usertype"],
        admintype: json["admintype"],
        providertype: json["providertype"],
        icProviderId:
            json["ic_provider_id"] == null ? null : json["ic_provider_id"],
        name: json["name"],
        email: json["email"],
        providerId: json["provider_id"],
        provider: json["provider"],
        mobile: json["mobile"],
        address: json["address"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        gender: json["gender"],
        image: json["image"],
        businessName:
            json["business_name"] == null ? null : json["business_name"],
        businessUrl: json["business_url"] == null ? null : json["business_url"],
        businessLogo: json["business_logo"],
        businessAbout:
            json["business_about"] == null ? null : json["business_about"],
        thumbnailImg: json["thumbnail_img"],
        travelFee: json["travel_fee"] == null ? null : json["travel_fee"],
        maximumTravelDistance: json["maximum_travel_distance"],
        travelPolicy: json["travel_policy"],
        serviceLocation:
            json["service_location"] == null ? null : json["service_location"],
        rating: json["rating"] == null ? null : json["rating"],
        lastSeen: json["last_seen"] == null
            ? null
            : DateTime.parse(json["last_seen"]),
        status: json["status"],
        route: json["route"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "role": role,
        "usertype": usertype,
        "admintype": admintype,
        "providertype": providertype,
        "ic_provider_id": icProviderId == null ? null : icProviderId,
        "name": name,
        "email": email,
        "provider_id": providerId,
        "provider": provider,
        "mobile": mobile,
        "address": address,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "gender": gender,
        "image": image,
        "business_name": businessName == null ? null : businessName,
        "business_url": businessUrl == null ? null : businessUrl,
        "business_logo": businessLogo,
        "business_about": businessAbout == null ? null : businessAbout,
        "thumbnail_img": thumbnailImg,
        "travel_fee": travelFee == null ? null : travelFee,
        "maximum_travel_distance": maximumTravelDistance,
        "travel_policy": travelPolicy,
        "service_location": serviceLocation == null ? null : serviceLocation,
        "rating": rating == null ? null : rating,
        "last_seen": lastSeen == null ? null : lastSeen,
        "status": status,
        "route": route,
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.logo,
    required this.homeStatus,
    required this.order,
    required this.status,
  });

  int id;
  String name;
  String logo;
  String homeStatus;
  String order;
  String status;

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        logo: json["logo"],
        homeStatus: json["home_status"],
        order: json["order"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "logo": logo,
        "home_status": homeStatus,
        "order": order,
        "status": status,
      };
}
