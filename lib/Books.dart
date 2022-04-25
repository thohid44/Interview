import 'package:book/Controller/BookController.dart';
import 'package:book/EvenNumber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var con = Get.put(BookController());
    con.fetchBook();
    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
      ),
      body: Obx(() => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemCount: con.books.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 1 / 2,
                        child: Image.network(con
                            .books[index].data.allVendors[index].thumbnailImg),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          con.books[index].data.allVendors[index].businessName
                              .toString(),
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                con.books[index].data.categories[index].name
                                    .toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                            Text(
                                con.books[index].data.allVendors[index].rating
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ])
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
