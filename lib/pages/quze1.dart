import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff004840),
      body: Container(
        child: Column(
          children: [
            Row(children: [
              Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Icon(Icons.arrow_back_ios,color: Colors.white,),
              ),

          ],)
             ],
        ),
      ),
    );
  }
}
