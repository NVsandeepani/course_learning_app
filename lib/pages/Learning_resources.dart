import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_learning_app/pages/quze1.dart';
 class LearningResources extends StatefulWidget {
   const LearningResources({super.key});
 
   @override
   State<LearningResources> createState() => _LearningResourcesState();
 }
 
 class _LearningResourcesState extends State<LearningResources> {
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
                  SizedBox(width: 20.0),
                  Text(
                    "LEARNING RESOURCES",
                    style: TextStyle(
                      color: Color.fromARGB(255, 38, 3, 61),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),



        //................categories of learning resources.............
        SizedBox(height: 50),
        Padding(
                 padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Material(
                       borderRadius: BorderRadius.circular(20.0),
                       elevation: 25.0,
                         
                      child: Container(
                        width: 150,
                        height: 150,
                        padding:EdgeInsets.all(10.0),
                        decoration: BoxDecoration(color:Color.fromARGB(255, 236, 226, 236), borderRadius: BorderRadius.circular(20.0) ),
                         
                           child:Text( "Video",  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 15.0, fontWeight: FontWeight.bold),),
                             ),
                         ),
        Material(
                       borderRadius: BorderRadius.circular(20.0),
                       elevation: 5.0,
                         
                      child: Container(
                        
                        width: 150,
                        height: 150,
                        padding:EdgeInsets.all(10.0),
                        decoration: BoxDecoration(color:Color.fromARGB(255, 236, 226, 236), borderRadius: BorderRadius.circular(20.0) ),
                         
                           child:
                             
                             Text( "PDF",  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 15.0, fontWeight: FontWeight.bold),),
                             
                         ),
                    ),                 
                  
           ] )
               ),

         SizedBox(height: 20),
        Padding(
                 padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        GestureDetector(
            onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=> Quiz1(category: "Quiz",)));
            },


          child: Material(
                         borderRadius: BorderRadius.circular(20.0),
                         elevation: 5.0,
                           
                        child: Container(
                          width: 150,
                          height: 150,
                          padding:EdgeInsets.all(10.0),
                          decoration: BoxDecoration(color:Color.fromARGB(255, 236, 226, 236), borderRadius: BorderRadius.circular(20.0) ),
                           
                             child:Text( "Quiz",  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 15.0, fontWeight: FontWeight.bold),),
                               ),
                           ),
        ),
        Material(
                       borderRadius: BorderRadius.circular(20.0),
                       elevation: 5.0,
                         
                      child: Container(
                        
                        width: 150,
                        height: 150,
                        padding:EdgeInsets.all(10.0),
                        decoration: BoxDecoration(color:Color.fromARGB(255, 236, 226, 236), borderRadius: BorderRadius.circular(20.0) ),
                         
                           child:
                             
                             Text( "Zoom Session",  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 15.0, fontWeight: FontWeight.bold),),
                             
                         ),
                    ),                 
                  
           ] )
               ),








                      ])
      ),

     );
   }
 }