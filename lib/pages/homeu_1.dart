import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  padding: EdgeInsets.only(left: 20.0, top: 50.0),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 74, 24, 107), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
                  child:
                      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/prof.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        )),
                        SizedBox(width: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Kalani Iresha",
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
                decoration: BoxDecoration(color: Color.fromARGB(255, 32, 2, 53), borderRadius: BorderRadius.circular(10)),
                margin:EdgeInsets.only(top:120.0, left: 20.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),                   
                       child: Image.asset("images/h21.jpg"),
                      ),
                      SizedBox(width:10.0),
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
                        "Build Your Skils ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w200),
                      ),
                        ],
                      ),
      
                      ],
                ),
              )
              ]
            )
          ],
        ),
      ),
    );
  }
}
