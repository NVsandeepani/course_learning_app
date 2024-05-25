import 'package:course_learning_app/pages/homeu_1.dart';
import 'package:flutter/material.dart';
import 'certificate.dart';

class ScorePage extends StatefulWidget {
  final int score;
  final int totalQuestions;
  final String category;

  ScorePage({
    required this.score,
    required this.totalQuestions,
    required this.category,
  });

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  final TextEditingController _nameController = TextEditingController();
  late String _userNameError = '';

  Future<void> generateCertificate(BuildContext context) async {
    if (_nameController.text.isEmpty) {
      setState(() {
        _userNameError = 'Please enter your name';
      });
    } else {
      setState(() {
        _userNameError = '';
      });

      final String certificateText = '''
Certificate of Completion

This is to certify that

Name: ${_nameController.text}

has successfully completed the quiz

Course Name: ${widget.category}

Score: ${widget.score}/${widget.totalQuestions}

Date: ${DateTime.now().toLocal().toString().split(' ')[0]}
''';

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              CertificatePage(certificateText: certificateText),
        ),
      ).then((_) {
        // Navigate back to the home screen after certificate is generated
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Home()), // Replace HomeScreen() with your actual home screen
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Quiz Completed'),
        backgroundColor: Color.fromARGB(255, 86, 7, 100),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quiz Completed!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your score is:',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                '${widget.score}/${widget.totalQuestions}',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 165, 7, 228),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                  errorText: _userNameError.isNotEmpty ? _userNameError : null,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  await generateCertificate(context);
                },
                child: Text(
                  'Generate Certificate',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
