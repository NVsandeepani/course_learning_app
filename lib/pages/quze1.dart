import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Quiz1 extends StatefulWidget {
  final String category;

  Quiz1({required this.category});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  late Future<List<DocumentSnapshot>> quizFuture;
  DocumentSnapshot? lastDocument;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    quizFuture = fetchCategoryQuiz();
  }

  Future<List<DocumentSnapshot>> fetchCategoryQuiz() async {
    try {
      Query query = FirebaseFirestore.instance
          .collection("Quizes")
          .where("Category", isEqualTo: widget.category);

      // If lastDocument is provided, start after that document
      if (lastDocument != null) {
        query = query.startAfterDocument(lastDocument!);
      }

      // Limit the query to fetch only one document
      query = query.limit(1);

      // Execute the query
      QuerySnapshot snapshot = await query.get();

      // Update lastDocument for pagination
      if (snapshot.docs.isNotEmpty) {
        lastDocument = snapshot.docs.last;
      }

      return snapshot.docs;
    } catch (e) {
      print('Error fetching quiz: $e');
      return [];
    }
  }

  nextPage() {
    setState(() {
      currentPage++;
      quizFuture = fetchCategoryQuiz();
    });
  }

  previousPage() {
    setState(() {
      if (currentPage > 0) {
        currentPage--;
        lastDocument = null; // Reset lastDocument to fetch the previous page
        quizFuture = fetchCategoryQuiz();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
              child: FutureBuilder<List<DocumentSnapshot>>(
                future: quizFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    if (snapshot.data!.isEmpty) {
                      return Center(child: Text('No questions available.'));
                    } else {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                DocumentSnapshot document =
                                    snapshot.data![index];
                                Map<String, dynamic> data =
                                    document.data() as Map<String, dynamic>;
                                return ListTile(
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(data['Question']),
                                      SizedBox(height: 8),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 4.0),
                                        child: TextField(
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          controller: TextEditingController(
                                              text: data['option1']),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 4.0),
                                        child: TextField(
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          controller: TextEditingController(
                                              text: data['option2']),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 4.0),
                                        child: TextField(
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          controller: TextEditingController(
                                              text: data['option3']),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 4.0),
                                        child: TextField(
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                          controller: TextEditingController(
                                              text: data['option4']),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: previousPage,
                                child: Text('Previous'),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: nextPage,
                                child: Text('Next'),
                              ),
                            ],
                          ),
                        ],
                      );
                    }
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
