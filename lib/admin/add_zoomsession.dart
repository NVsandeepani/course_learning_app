import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddZoomSession extends StatefulWidget {
  const AddZoomSession({super.key});

  @override
  State<AddZoomSession> createState() => _AddZoomSessionState();
}

class _AddZoomSessionState extends State<AddZoomSession> {
  final List<String> courseItems = [
    'Cyber Security',
    'cryptography',
    'HTML',
    'JAVA'
  ];
  TextEditingController urlController = TextEditingController();
  TextEditingController topicController = TextEditingController();
  String? selectedCategory;

  Future<void> saveZoomSessionData(
      String url, String category, String topic) async {
    try {
      // Save the Zoom session URL, category, and topic to Firestore
      await FirebaseFirestore.instance.collection('ZoomSessions').add({
        'url': url,
        'category': category,
        'topic': topic,
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Zoom session data saved successfully')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save Zoom session data: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Zoom Session",
          style: TextStyle(
              color: Color.fromARGB(255, 252, 251, 251),
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 70, 3, 97),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: topicController,
                decoration: InputDecoration(
                  hintText: 'Enter Topic',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: urlController,
                decoration: InputDecoration(
                  hintText: 'Enter Zoom URL',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 177, 206),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  items: courseItems.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value;
                    });
                  },
                  dropdownColor: Colors.white,
                  hint: Text("Select Category"),
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                  value: selectedCategory,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (urlController.text.isNotEmpty &&
                        selectedCategory != null &&
                        topicController.text.isNotEmpty) {
                      saveZoomSessionData(urlController.text, selectedCategory!,
                          topicController.text);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Please enter a URL, topic, and select a category')));
                    }
                  },
                  child: Text("Add"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
