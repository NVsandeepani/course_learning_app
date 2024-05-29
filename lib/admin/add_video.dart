import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Advideo extends StatefulWidget {
  const Advideo({super.key});

  @override
  State<Advideo> createState() => _AdvideoState();
}

class _AdvideoState extends State<Advideo> {
  final List<String> courseItems = [
    'Cyber Security',
    'cryptography',
    'HTML',
    'JAVA'
  ];
  TextEditingController videoController = TextEditingController();
  TextEditingController topicController = TextEditingController();
  String? selectedCategory;

  Future<void> saveVideoUrl(String url, String category, String topic) async {
    try {
      // Save the video URL, category, and topic to Firestore
      await FirebaseFirestore.instance.collection('videos').add({
        'url': url,
        'category': category,
        'topic': topic,
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Video URL saved successfully')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save video URL: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Video",
          style: TextStyle(
              color: Color.fromARGB(255, 252, 251, 251),
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 70, 3, 97),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              
            //......................................................................
                 Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 175, 206),
                       borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.only(top: 40.0,left: 10.0, right: 10 ),
                    child: Row(
                      children: [
                                Image.asset(
                                  "images/uploadvdio.jpg",
                                  height: 150,
                                  width: MediaQuery.of(context).size.width/1.2,
                                  fit: BoxFit.cover, 
                                ),
                      ]),),
      
      
      
              //.........................................................................
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
                  controller: videoController,
                  decoration: InputDecoration(
                    hintText: 'Enter URL',
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
                width: MediaQuery.of(context).size.width,
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
                      if (videoController.text.isNotEmpty &&
                          selectedCategory != null &&
                          topicController.text.isNotEmpty) {
                        saveVideoUrl(videoController.text, selectedCategory!,
                            topicController.text);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Please enter a URL, topic, and select a category')));
                      }
                    },
                    // add button styles
                       style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 70, 3, 97), // Background color
                                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                                shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Add"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
