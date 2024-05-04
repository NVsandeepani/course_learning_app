import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethods{
  Future addQuizeCategory(Map<String, dynamic> userQuizeCategory, String category)async{
    return await FirebaseFirestore.instance.collection(category).add(userQuizeCategory);
   
  }
}