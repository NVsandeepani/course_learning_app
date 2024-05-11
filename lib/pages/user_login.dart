import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Text("hellow",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: 20.0,),
            Text("buildup your own skills",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            //....................................add email text feild....................
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey,border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(12), ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(decoration: InputDecoration(border: InputBorder.none, hintText: "email"),),
                ),
              ),
            ),
             //....................................add password text feild....................
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey,border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(12), ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    obscureText: true, //hide from user
                    decoration: InputDecoration(border: InputBorder.none, hintText: "password"),),
                ),
              ),
            ), 
             //....................................add email text feild....................
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(12), ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text("Sign in",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),),
                      ),
                ),
              ),
            ),
            //..................... not a member............................. 
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text ("not a member",style: TextStyle(color: Color.fromARGB(255, 8, 8, 8), fontWeight: FontWeight.bold,fontSize: 18),),
               Text ("SignUp",style: TextStyle(color: Color.fromARGB(255, 47, 8, 224), fontWeight: FontWeight.bold,fontSize: 18),),
             
             ],
           ),
                     
          ],
        ),
      ),)      
    );
  }
}