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
      backgroundColor: Color.fromARGB(255, 253, 253, 253),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.0, left:20.0),
              child: Row(children: [
                Container(
                  // ................back iocon ........
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 89, 5, 114), borderRadius: BorderRadius.circular(60)),   
                  child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                   ),
                  ),
                  SizedBox(width:100.0),
                          Text(
                              "HTML",
                                  style: TextStyle(
                                  color: Color.fromARGB(255, 38, 3, 61),
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                   
            
                      ],),
            ),
            SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),   
            decoration: BoxDecoration(color: Color.fromARGB(255, 252, 250, 253), borderRadius: BorderRadius.circular(10)), 
            child: 
                      
                      Text(
                            "What does HTML stand for ? & Who is making the Web standards? "  
                            ,
                                style: TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
            
            
          ),
       //..................ANSWERS   
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),   
            decoration: BoxDecoration(border: Border.all( color: Color.fromARGB(255, 88, 3, 105), width: 1.5), borderRadius: BorderRadius.circular(10)), 
            child: 
                      
                      Text(
                            "Hypher Text Markup Language "  
                            ,
                                style: TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
            
            
          ),
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),   
            decoration: BoxDecoration(border: Border.all( color: Color.fromARGB(255, 88, 3, 105), width: 1.5), borderRadius: BorderRadius.circular(10)), 
            child: 
                      
                      Text(
                            "Hypher Text Markup Language "  
                            ,
                                style: TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
            
            
          ),
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),   
            decoration: BoxDecoration(border: Border.all( color: Color.fromARGB(255, 88, 3, 105), width: 1.5), borderRadius: BorderRadius.circular(10)), 
            child: 
                      
                      Text(
                            "Hypher Text Markup Language "  
                            ,
                                style: TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
            
            
          ),
          SizedBox(height: 30.0),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),   
            decoration: BoxDecoration(border: Border.all( color: Color.fromARGB(255, 88, 3, 105), width: 1.5), borderRadius: BorderRadius.circular(10)), 
            child: 
                      
                      Text(
                            "Hypher Text Markup Language "  
                            ,
                                style: TextStyle(
                                color: Color.fromARGB(255, 8, 8, 8),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
            
            
          ),
             ],
        ),
      ),
    );
  }
}
