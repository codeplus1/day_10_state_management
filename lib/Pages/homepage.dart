import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorials'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/state");
                },
                child: Text('State Management'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/products");
                },
                child: Text('Products'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/registerPage");
                },
                child: Text('Register Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
