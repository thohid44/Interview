import 'dart:convert';

import 'package:book/Model/BookModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BookController extends GetxController {
  String baseUrl = "book3m-api.spinnertechltd.com";

  List<BookModel> books = <BookModel>[].obs;
  var client = http.Client();

  void onInit() {
    fetchBook();
    super.onInit();
  }

  Future<List<BookModel>> fetchBook() async {
    var response =
        await http.get(Uri.parse("http://book3m-api.spinnertechltd.com/api"));

    if (response.statusCode == 200) {
      final list = jsonDecode(response.body.toString());

      BookModel book = BookModel.fromMap(list);

      books.add(book);

      return books;
    }

    return books;
  }
}


//  if (response.statusCode == 200) {
//       data.forEach((e) {
//         medicin.add(Products.fromJson(e));
//       });

//       print(data);
//     }