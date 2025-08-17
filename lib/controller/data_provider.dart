import 'dart:developer';

import 'package:baseapp/model/data_model.dart';
import 'package:baseapp/service/data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataProvider extends ChangeNotifier{
  DataService dataService = DataService();
  TextEditingController nameconroller = TextEditingController();
  TextEditingController ageeconroller = TextEditingController();
  TextEditingController studyconroller = TextEditingController();
  TextEditingController addressconroller = TextEditingController();
  TextEditingController imageconroller = TextEditingController();

Future add_data(BuildContext context) async {
  try {
    if (nameconroller.text.isEmpty ||
        ageeconroller.text.isEmpty ||
        studyconroller.text.isEmpty ||
        addressconroller.text.isEmpty ||
        imageconroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    int? aged = int.tryParse(ageeconroller.text);
    if (aged == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Age must be a number')),
      );
      return;
    }

    final newdata = DataModel(
      name: nameconroller.text,
      age: aged,
      study: studyconroller.text,
      address: addressconroller.text,
      imageurl: imageconroller.text,
    );

    await dataService.adddata(newdata);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Student added successfully')),
    );
    notifyListeners();
  } catch (e) {
    log('error is $e');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Something went wrong')),
    );
  }
}


void clearControllers() {
  nameconroller.clear();
  ageeconroller.clear();
  studyconroller.clear();
  addressconroller.clear();
  imageconroller.clear();
}

@override
void dispose() {
  nameconroller.dispose();
  ageeconroller.dispose();
  studyconroller.dispose();
  addressconroller.dispose();
  imageconroller.dispose();
  super.dispose();
}


}
