import 'package:day_10_state_management/Provider/student.dart';
import 'package:day_10_state_management/const/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Student student = Provider.of<Student>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(hintText: 'Enter Your Full Name'),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                ),
                TextFormField(
                  controller: mobile,
                  decoration: InputDecoration(hintText: 'Enter Your Mobile'),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                  keyboardType: TextInputType.phone,
                ),
                TextFormField(
                  controller: address,
                  decoration: InputDecoration(hintText: 'Enter Your Address'),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(hintText: 'Enter Your E-mail'),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                  keyboardType: TextInputType.emailAddress,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          student.setName(name.text);
                          student.setMobile(mobile.text);
                          student.setAddress(address.text);
                          student.setEmail(email.text);
                          Navigator.pushNamed(context, '/education');
                        }
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
