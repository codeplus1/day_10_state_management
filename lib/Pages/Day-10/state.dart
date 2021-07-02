import 'package:flutter/material.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({Key? key}) : super(key: key);

  @override
  _StateManagementState createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day-10'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text("Register"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
