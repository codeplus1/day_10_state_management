import 'package:day_10_state_management/Provider/student.dart';
import 'package:day_10_state_management/const/const.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Student student = Provider.of<Student>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: key,
            child: Column(
              children: [
                TextFormField(
                  controller: qualification,
                  decoration: InputDecoration(hintText: 'Your Qualification'),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                ),
                TextFormField(
                  controller: percentage,
                  decoration:
                      InputDecoration(hintText: 'Enter Your Percentage'),
                  validator: (value) => value!.isEmpty ? 'Must Required' : null,
                  keyboardType: TextInputType.number,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          student.setQualification(qualification.text);
                          student.setPercentage(double.parse(percentage.text));
                          Navigator.pushNamed(context, '/review');
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
