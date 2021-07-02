import 'package:day_10_state_management/Pages/Day-10/Education.dart';
import 'package:day_10_state_management/Pages/Day-10/Review.dart';
import 'package:day_10_state_management/Pages/Day-10/personal_details.dart';
import 'package:day_10_state_management/Pages/Day-11/products.dart';
import 'package:day_10_state_management/Pages/Day-11/register.dart';
import 'package:day_10_state_management/Pages/homepage.dart';
import 'package:day_10_state_management/Pages/Day-10/state.dart';
import 'package:day_10_state_management/Provider/student.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Student()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        "/": (_) => HomePage(),
        "/state": (_) => StateManagement(),
        "/register": (_) => Register(),
        "/education": (_) => Education(),
        "/review": (_) => Review(),
        "/products": (_) => Products(), //Day-11 ko json server
        "/registerPage": (_) => RegisterPage(),
      },
    );
  }
}
