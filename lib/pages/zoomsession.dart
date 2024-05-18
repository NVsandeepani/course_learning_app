import 'package:flutter/material.dart';
class Zoomsession extends StatefulWidget {
  const Zoomsession({super.key});

  @override
  State<Zoomsession> createState() => _ZoomsessionState();
}

class _ZoomsessionState extends State<Zoomsession> {
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
                  SizedBox(height: 20),
                ]),
            ),
          ]),
      ),
    );
  }
}