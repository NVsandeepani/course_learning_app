// ignore_for_file: avoid_unnecessary_containers

import 'package:course_learning_app/pages/score.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// Import CertificatePage

class Quiz1 extends StatefulWidget {
  final String category;

  Quiz1({required this.category});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  late Future<List<DocumentSnapshot>> quizFuture;
  List<DocumentSnapshot> questions = [];
  int currentPage = 0;
  late String correctAnswer = '';
  int score = 0;
  int totalQuestions = 0;
  String? selectedAnswer;

  @override
  void initState() {
    super.initState();
    quizFuture = fetchCategoryQuiz();
  }

  Future<List<DocumentSnapshot>> fetchCategoryQuiz() async {
    try {
      Query query = FirebaseFirestore.instance
          .collection("Quizes")
          .where("Category", isEqualTo: widget.category)
          .limit(10); // Fetch a batch of questions

      QuerySnapshot snapshot = await query.get();

      if (snapshot.docs.isNotEmpty) {
        questions = snapshot.docs;
        correctAnswer = questions.first.get('Answer');
        totalQuestions = questions.length;
      }

      return questions;
    } catch (e) {
      print('Error fetching quiz: $e');
      return [];
    }
  }

  void handleAnswer(String selectedOption) {
    setState(() {
      selectedAnswer = selectedOption;
    });
    bool isCorrect = selectedOption == correctAnswer;
    if (isCorrect) {
      score++;
    }

    showAnswerMessage(isCorrect);
  }

  void showAnswerMessage(bool isCorrect) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Column(
            children: [
              Icon(
                isCorrect ? Icons.check_circle : Icons.cancel,
                color: isCorrect ? Colors.green : Colors.red,
                size: 50.0,
              ),
              SizedBox(height: 10.0),
              Text(
                isCorrect ? 'Correct!' : 'Incorrect!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          content: Text(
            isCorrect
                ? 'Your answer is correct.'
                : 'Your answer is incorrect. The correct answer is: $correctAnswer',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                fetchNextQuestionOrShowScore();
              },
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void fetchNextQuestionOrShowScore() {
    if (currentPage + 1 < questions.length) {
      setState(() {
        currentPage++;
        correctAnswer = questions[currentPage].get('Answer');
        selectedAnswer = null; // Reset selected answer for the next question
      });
    } else {
      navigateToScorePage();
    }
  }

  void navigateToScorePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScorePage(
          score: score,
          totalQuestions: totalQuestions,
          category: widget.category, // Pass the category to ScorePage
        ),
      ),
    );
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
                    if (questions.isEmpty) {
                      return Center(child: Text('No questions available.'));
                    } else {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: 1, // Show one question at a time
                              itemBuilder: (context, index) {
                                if (currentPage < questions.length) {
                                  DocumentSnapshot document =
                                      questions[currentPage];
                                  Map<String, dynamic> data =
                                      document.data() as Map<String, dynamic>;
                                  return ListTile(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(data['Question']),
                                        SizedBox(height: 8),
                                        RadioListTile<String>(
                                          title: Text(data['option1']),
                                          value: data['option1'],
                                          groupValue: selectedAnswer,
                                          onChanged: (value) {
                                            handleAnswer(value!);
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: Text(data['option2']),
                                          value: data['option2'],
                                          groupValue: selectedAnswer,
                                          onChanged: (value) {
                                            handleAnswer(value!);
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: Text(data['option3']),
                                          value: data['option3'],
                                          groupValue: selectedAnswer,
                                          onChanged: (value) {
                                            handleAnswer(value!);
                                          },
                                        ),
                                        RadioListTile<String>(
                                          title: Text(data['option4']),
                                          value: data['option4'],
                                          groupValue: selectedAnswer,
                                          onChanged: (value) {
                                            handleAnswer(value!);
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  return SizedBox.shrink();
                                }
                              },
                            ),
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
