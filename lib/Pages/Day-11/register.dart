import 'package:day_10_state_management/api/api.dart';
import 'package:day_10_state_management/const/const.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> key = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: key,
            child: Column(
              children: [
                // Name
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                  ),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                ),
                // Email
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                  keyboardType: TextInputType.emailAddress,
                ),
                // Password
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (key.currentState!.validate()) {
                      Map data = {
                        "name": name.text,
                        "email": email.text,
                        "password": password.text
                      };

                      var response = await Api().postData(data, 'users');
                      print(response.statusCode);
                      if (response.statusCode == 201) {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (builder) {
                              return AlertDialog(
                                title: Text("Message"),
                                content: Text("Account Created Successfully"),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      name.clear();
                                      email.clear();
                                      password.clear();
                                      Navigator.pushNamed(context, '/products');
                                    },
                                    child: Text("OK"),
                                  ),
                                ],
                              );
                            });
                      }
                    }
                  },
                  child: Text('Register'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
