import 'dart:developer';

import 'package:baseapp/model/data_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataService {
   
FirebaseFirestore firestore=FirebaseFirestore.instance;

Future adddata(DataModel students)async{
    try {
          await firestore.collection('students').add(students.toFire());
          log('success aayi');
    } catch (e) {
        log('issue with firestore: $e');
      
    }


}







}