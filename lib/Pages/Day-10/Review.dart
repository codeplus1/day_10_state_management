import 'package:day_10_state_management/Provider/student.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    Student student = Provider.of<Student>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Review"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Card(
            elevation: 10,
            shadowColor: Colors.red[200],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name : " + student.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Mobile : " + student.mobile,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Address : " + student.address,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "email : " + student.email,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Qualification : " + student.qualification,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Percentage : " + student.percentage.toString() + "%",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: 2),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cloud_upload_outlined,
                          color: Colors.yellow,
                        ),
                        label: Text("Submit"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
