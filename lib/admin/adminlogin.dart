import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_learning_app/admin/addquize.dart';
import 'package:course_learning_app/pages/homeu_1.dart';
import 'package:flutter/material.dart';
 class AdminLog extends StatefulWidget {
   const AdminLog({super.key});
 
   @override
   State<AdminLog> createState() => _AdminLogState();
 }
 
 class _AdminLogState extends State<AdminLog> {
  TextEditingController usernamecontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();
  
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 238, 238),
        body: Container(
          child: Stack( children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
              padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[Color.fromARGB(255, 93, 3, 121), Color.fromARGB(255, 21, 1, 22)], begin: Alignment.topLeft, end: Alignment.bottomRight), borderRadius: BorderRadius.vertical(top: Radius.elliptical(MediaQuery.of(context).size.width, 110.0))
            ),
            ),
            
           Container(
             margin: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0), 
              child: Form(child: Column(children: [
                    
                    Text( "Login To Admin Panel !",
                                  style: TextStyle(
                                  color: Color.fromARGB(255, 7, 0, 12),
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 30.0),
                        Material(
                          elevation:3.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height/2.2,
                            decoration: BoxDecoration( color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column( children: [
                              SizedBox(
                                height: 50.0),
                          //.................. add user name text feild  ..................    
                               Container(
                                padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 44, 10, 54)), borderRadius: BorderRadius.circular(10),),
                                child: Container(child: TextFormField( controller: usernamecontroller,
                                  validator: (value) {
                                    if(value==null||value.isEmpty){
                                      return "Please enter user name";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "username",
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))
                                   ),
                                 ) ,),
                              ),
                          //.................. add password  text feild  ..................    
                            SizedBox(height: 40.0),
                               Container(
                                padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0),
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 44, 10, 54)), borderRadius: BorderRadius.circular(10),),
                                child: Container(child: TextFormField( controller: userpasswordcontroller,
                                  validator: (value) {
                                    if(value==null||value.isEmpty){
                                      return "Please enter password";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "password",
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))
                                   ),
                                 ) ,
                                 ),
                              ),    
                         //...................Login button.............     
                            SizedBox(height: 40.0), 
                          
                            GestureDetector(
                              onTap: (){
                                LoginAdmin();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                margin: EdgeInsets.symmetric(horizontal: 22.0),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 32, 1, 53),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle( color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ), 
                          ],
                              
                            ),
                          ),
                        ),
              ],)),
           ), 
          ],),
        ) ,
     );
   }
   //.........................connect firebase..................
   LoginAdmin(){
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      snapshot.docs.forEach((result) {
          if(result.data()['id']!=usernamecontroller.text.trim()){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your id is not correct", style: TextStyle(fontSize: 18.0),
            )));
          }
          else if(result.data()["password"]!= userpasswordcontroller.text.trim()){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your Password  is not correct", style: TextStyle(fontSize: 18.0),
            )));
          }
         else{
          Route route=MaterialPageRoute(builder:  (context)=> Adquize());
          Navigator.pushReplacement(context, route);
         } 
       });
      
    },);
   }
 }