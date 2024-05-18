import 'package:course_learning_app/Authentication/User&AdminLogin.dart';
import 'package:course_learning_app/Authentication/UserRegister.dart';

import 'package:flutter/material.dart';
class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: Center(
         child: Column(
          
          children: [
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,                      
                        children: [
                          Padding(
                          padding: const EdgeInsets.only(top:250 ),
                           child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.asset(
                                "images/logo2.jpg",
                                height: 150,
                                width: 150,
                                
                              ),
                              ),
                        ),
                        
                       
                        ],
                        
                            ),
                          
                ),
                       
                          Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Text(
                            "EDUplus",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 40, 3, 48),
                                fontSize: 34.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "For Buildup Your Skils ",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 74, 2, 90),
                                fontSize: 22.0,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                          
                  SizedBox(height: 120.0,),
               GestureDetector(
                onTap: () {
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                },


                 child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: Container(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 82, 6, 95), borderRadius: BorderRadius.circular(12), ),
                    child: Padding(
                    padding: const EdgeInsets.all(20),
                      child: Center(
                      child: Text("GET START ",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 18),),
                        ),
                  ),
                             ),
                           ),
               ),                 
                                  
                                 
                        

              ],

         ),
      ),

    );
  }
}