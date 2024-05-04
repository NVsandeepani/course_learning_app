import 'package:cloud_firestore/cloud_firestore.dart';

// class DataBaseMethods{
// Future addQuizeCategory(Map<String, dynamic> userQuizeCategory, String category)async{
//   return await FirebaseFirestore.instance.collection(category).add(userQuizeCategory);

// }
//   Future <Stream<QuerySnapshot>> getCategoryQuiz(String category)async{
//       return  FirebaseFirestore.instance.collection(category).snapshots();
//   }
// }

class DataBaseMethods {
  /*Future<void> addQuizeCategory(
      Map<String, dynamic> userQuizeCategory, String category) async {
    try {
      await FirebaseFirestore.instance
          .collection(category)
          .add(userQuizeCategory);
      print('Quiz category added successfully.');
    } catch (e) {
      print('Error adding quiz category: $e');
    }
  }*/
  Future addQuizeCategory(Map<String, dynamic> userQuizeCategory, String category)async{
   return await FirebaseFirestore.instance.collection(category).add(userQuizeCategory);

}
}