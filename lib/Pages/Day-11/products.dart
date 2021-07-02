import 'dart:convert';

import 'package:day_10_state_management/Pages/Day-11/ProductDesc.dart';
import 'package:day_10_state_management/api/api.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // Method for getting Product

  Future getProduct() async {
    var response = await Api().getData('products');
    var data = json.decode(response.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            children: [
              FutureBuilder(
                future: getProduct(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        var mydata = snapshot.data[index];
                        return ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Description(
                                  mydata['name'],
                                  mydata['price'],
                                  mydata['unit'],
                                  mydata['description'],
                                  mydata['image'],
                                ),
                              ),
                            );
                          },
                          leading: Image.network(
                            mydata['image'],
                            fit: BoxFit.cover,
                          ),
                          trailing: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart_outlined),
                              label: Text(
                                'Add To Cart',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              )),
                          title: Text(
                            mydata['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 25),
                          ),
                          subtitle: Text(mydata['price'].toString() +
                              " per " +
                              mydata['unit']),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("Error Please Contact Admin");
                  } else {
                    return Text("Loading...");
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
