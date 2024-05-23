import 'package:flutter/material.dart';

class CertificatePage extends StatelessWidget {
  final String certificateText;

  CertificatePage({required this.certificateText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generated Certificate'),
        backgroundColor: Color.fromARGB(255, 61, 1, 85),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Certificate of Completion',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(
                  thickness: 2.0,
                  color: Colors.teal,
                ),
                SizedBox(height: 20.0),
                // Split certificate text by newlines to highlight specific parts
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: certificateText
                      .split('\n')
                      .map((line) => _buildHighlightedText(line))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHighlightedText(String text) {
    Color highlightColor =
        Color.fromARGB(255, 175, 0, 152); // Color for highlighted parts
    if (text.contains('Name:') ||
        text.contains('Course Name:') ||
        text.contains('Score:') ||
        text.contains('Date:')) {
      return Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: highlightColor,
        ),
        textAlign: TextAlign.center,
      );
    } else {
      return Text(
        text,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      );
    }
  }
}
