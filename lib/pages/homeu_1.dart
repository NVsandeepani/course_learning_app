import 'package:course_learning_app/pages/Learning_resources%20.dart';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 244, 247),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Stack(
              children: [
                Container(
                  height: 220,
                  padding: EdgeInsets.only(left: 20.0, top: 50.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 95, 29, 116),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              "images/logo1.png",
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(width: 20.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            " Welcome to Edu Plus ", 
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 32, 2, 53),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(top: 120.0, left: 10.0, right: 10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        child: Image.asset("images/h21.jpg"),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "  EduPlus ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "for Buildup Your Skils ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Top Courses Categorise",
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            // Course categories
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Course category 1 - Cyber Security
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LearningResources(category: "Cyber Security"),
                        ),
                      );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 236, 226, 236),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/Cyber-Security-Icon-Concept-2-1.jpeg",
                              height: 88,
                              width: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Cyber Security",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Course category 2 - Cryptography
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LearningResources(category: "cryptography"),
                        ),
                      );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 236, 226, 236),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/crypto.png",
                              height: 88,
                              width: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Cryptography",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            // Course categories continued
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Course category 3 - HTML
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LearningResources(category: "HTML"),
                        ),
                      );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 236, 226, 236),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/cate9.png",
                              height: 88,
                              width: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "HTML",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Course category 4 - JAVA
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LearningResources(category: "JAVA"),
                        ),
                      );
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      elevation: 5.0,
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 236, 226, 236),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/cate3.jpg",
                              height: 88,
                              width: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 10.0,
                              width: 10.0,
                            ),
                            Text(
                              "JAVA",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
