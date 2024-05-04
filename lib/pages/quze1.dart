import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Quiz1 extends StatefulWidget {
  final String category;

  Quiz1({required this.category});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  late Future<List<Map<String, dynamic>>> quizFuture;

  @override
  void initState() {
    super.initState();
    fetchCategoryQuiz();
  }

  fetchCategoryQuiz() async {
    quizFuture = DataBaseMethods().getCategoryQuiz(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 197, 234),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.0, left: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 89, 5, 114),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 100.0),
                  Text(
                    widget.category,
                    style: TextStyle(
                      color: Color.fromARGB(255, 38, 3, 61),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: FutureBuilder<List<Map<String, dynamic>>>(
                future: quizFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = snapshot.data![index];
                        return ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data['Question']),
                              SizedBox(height: 8),
                              Text('Option 1: ${data['option 1'] ?? ''}'),
                              Text('Option 2: ${data['option 2'] ?? ''}'),
                              Text('Option 3: ${data['option 3'] ?? ''}'),
                              Text('Option 4: ${data['option 4'] ?? ''}'),
                              SizedBox(height: 8),
                              Text('Answer: ${data['Answer']}',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DataBaseMethods {
  Future<List<Map<String, dynamic>>> getCategoryQuiz(String category) async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection(category)
          .get(); // Assuming each category corresponds to a collection

      List<Map<String, dynamic>> quizList = [];

      snapshot.docs.forEach((document) {
        quizList.add(document.data() as Map<String, dynamic>);
      });

      return quizList;
    } catch (e) {
      print('Error fetching quiz: $e');
      return [];
    }
  }

  Future<void> addQuizeCategory(
      Map<String, dynamic> userQuizeCategory, String category) async {
    try {
      await FirebaseFirestore.instance
          .collection(category)
          .add(userQuizeCategory);
      print('Quiz category added successfully.');
    } catch (e) {
      print('Error adding quiz category: $e');
    }
  }
}
