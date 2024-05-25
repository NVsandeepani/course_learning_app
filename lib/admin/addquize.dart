import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Adquize extends StatefulWidget {
  const Adquize({super.key});

  @override
  State<Adquize> createState() => _AdquizeState();
}

class _AdquizeState extends State<Adquize> {
  String? value;
  final List<String> coursitem = ['Cyber Security', 'cryptography', 'HTML', 'JAVA'];

  TextEditingController quizcontroller = TextEditingController();
  TextEditingController option1controller = TextEditingController();
  TextEditingController option2controller = TextEditingController();
  TextEditingController option3controller = TextEditingController();
  TextEditingController option4controller = TextEditingController();
  TextEditingController correctcontroller = TextEditingController();

  // Function to clear all text fields
  void clearAllFields() {
    quizcontroller.clear();
    option1controller.clear();
    option2controller.clear();
    option3controller.clear();
    option4controller.clear();
    correctcontroller.clear();
  }

  // Function to upload data to Firestore
  uploadItem() async {
    if (value == null) {
      // Check if category is selected
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Please select a category"),
      ));
      return;
    }

    try {
      Map<String, dynamic> adQuizeData = {
        "Question": quizcontroller.text,
        "option1": option1controller.text,
        "option2": option2controller.text,
        "option3": option3controller.text,
        "option4": option4controller.text,
        "Answer": correctcontroller.text,
        "Category": value,
      };

      // Add data to Firestore
      await FirebaseFirestore.instance
          .collection('Quizes') // Change 'Quizes' to your Firestore collection name
          .add(adQuizeData);

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Color.fromARGB(255, 116, 2, 151),
        content: Text(
          "Quiz added successfully!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));

      // Clear all fields after successful upload
      clearAllFields();
    } catch (e) {
      // Show error message if something goes wrong
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Failed to add quiz: $e"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Quiz",
          style: TextStyle(
              color: Color.fromARGB(255, 252, 251, 251),
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 70, 3, 97),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.0),
              // TextField for Question
              buildTextField(
                controller: quizcontroller,
                labelText: "Question",
              ),

              // TextFields for options
              buildTextField(
                controller: option1controller,
                labelText: "Option 1",
              ),
              buildTextField(
                controller: option2controller,
                labelText: "Option 2",
              ),
              buildTextField(
                controller: option3controller,
                labelText: "Option 3",
              ),
              buildTextField(
                controller: option4controller,
                labelText: "Option 4",
              ),

              // TextField for correct answer
              buildTextField(
                controller: correctcontroller,
                labelText: "Answer",
              ),

              // Dropdown for selecting category
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
                    items: coursitem
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) => setState(() {
                      this.value = value;
                    }),
                    dropdownColor: Colors.white,
                    hint: Text("Select Category"),
                    iconSize: 36,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                    value: value,
                  ),
                ),
              ),

              // Button to add the quiz
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  ElevatedButton(
                    onPressed: () {
                      uploadItem();
                    },
                    
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 70, 3, 97), // Background color
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    child: Text("Add"), 
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      clearAllFields();
                    },
                    
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 70, 3, 97), // Background color
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                    child: Text("Clear All"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to build TextField with clear button
  Widget buildTextField({
    required TextEditingController controller,
    required String labelText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0),
        Text(
          labelText,
          style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 184, 180, 180),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Enter $labelText",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 10, 10, 10),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

