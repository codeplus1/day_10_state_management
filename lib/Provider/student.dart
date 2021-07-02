import 'package:flutter/cupertino.dart';

class Student extends ChangeNotifier {
  String? _name;
  String? _mobile;
  String? _address;
  String? _email;
  String? _qualification;
  double? _percentage;

// Setup Student Name
  void setName(String data) {
    _name = data;
    notifyListeners();
  }

  String get name {
    return _name!;
  }

// Setup Mobile
  void setMobile(String data) {
    _mobile = data;
    notifyListeners();
  }

  String get mobile {
    return _mobile!;
  }

  // Setup Mobile
  void setEmail(String data) {
    _email = data;
    notifyListeners();
  }

  String get email {
    return _email!;
  }

//  Setup Address
  void setAddress(String data) {
    _address = data;
    notifyListeners();
  }

  String get address {
    return _address!;
  }

// Setup Qualification
  void setQualification(String data) {
    _qualification = data;
    notifyListeners();
  }

  String get qualification {
    return _qualification!;
  }

  // Setup percentage
  void setPercentage(double data) {
    _percentage = data;
    notifyListeners();
  }

  double get percentage {
    return _percentage!;
  }
}
