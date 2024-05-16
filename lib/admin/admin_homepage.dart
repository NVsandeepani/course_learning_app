import 'package:course_learning_app/admin/addquize.dart';
import 'package:flutter/material.dart';

class Adminhomepage extends StatefulWidget {
  const Adminhomepage({super.key});

  @override
  State<Adminhomepage> createState() => _AdminhomepageState();
}

class _AdminhomepageState extends State<Adminhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 244, 247),
      body: SingleChildScrollView(
        // Scroll view
        child: Container(
          //margin: EdgeInsets.only(bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 220,
                  padding: EdgeInsets.only(left: 20.0, top: 50.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 74, 24, 107),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 20.0),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Admin Panel",
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
                            "EduPlus",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "for Buildup Your Skils ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Add Learning Resources",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //   ........................start courses catogories.........................
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //........................Quizzes.........................
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Adquize(),
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
                                "images/QUIZEE.jpg",
                                height: 88,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                                width: 10.0,
                              ),
                              Text(
                                "Quiz",
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
                    //....................... Video ..................

                    GestureDetector(
                      onTap: () {},
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
                                "images/4404094.png",
                                height: 88,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                                width: 10.0,
                              ),
                              Text(
                                "Video",
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
              //............................................................................
              //....................... PDF........
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
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
                                "images/image.png",
                                height: 88,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                                width: 10.0,
                              ),
                              Text(
                                "PDF",
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
                    //....................... Zoom Session ........
                    GestureDetector(
                      onTap: () {},
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
                                "images/ZOOM.png",
                                height: 88,
                                width: 88,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                                width: 10.0,
                              ),
                              Text(
                                "Zoom Session",
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
      ),
    );
  }
}
