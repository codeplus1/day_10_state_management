import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  final String name;
  final String price;
  final String unit;
  final String description;
  final String image;

  Description(this.name, this.price, this.unit, this.description, this.image);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                widget.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Rs. " + widget.price + " " + "/ " + widget.unit,
                    style: TextStyle(fontSize: 18),
                  ),
                  Divider(),
                  Text(
                    "Description",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black87),
                  ),
                  SizedBox(height: 10),
                  Text(widget.description)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
