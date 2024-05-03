import 'package:flutter/material.dart';

class Adquize extends StatefulWidget {
  const Adquize({super.key});

  @override
  State<Adquize> createState() => _AdquizeState();
}

class _AdquizeState extends State<Adquize> {

  String ? value;
final List<String> coursitem=['Cyber Security', 'cryptography', 'Data communication', 'Network'];

  TextEditingController quizcontroller= new TextEditingController();
  TextEditingController option1controller= new TextEditingController();
  TextEditingController option2controller= new TextEditingController();
  TextEditingController option3controller= new TextEditingController();
  TextEditingController option4controller= new TextEditingController();
  TextEditingController correctcontroller= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: AppBar(
        title: Text("Add Quiz", style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor:  Color.fromARGB(255, 70, 3, 97),
      ),
      
      body:  SingleChildScrollView(   
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 30.0),
              Text("Question", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                   ),
                SizedBox(height: 20.0),
                   
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                 width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration( color: Color.fromARGB(255, 198, 177, 206),
                              borderRadius: BorderRadius.circular(20),
                              ),
                child: TextField(controller:quizcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your question",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 7, 7, 7), fontSize: 20.0, fontWeight: FontWeight.bold )
                  ),
                 ),
                
               ),
        //.............................answers......................
            
              SizedBox(height: 20.0),
              Text("option 1", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                   ),
                SizedBox(height: 10.0),   
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                 width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration( color: const Color.fromARGB(255, 184, 180, 180) ,
                              borderRadius: BorderRadius.circular(20),
                              ),
                child: TextField(controller:option1controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter option 1",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 20.0, fontWeight: FontWeight.bold )
                  ),
                 ),
                
               ) ,          
          //.............................answers......................
            
              SizedBox(height: 20.0),
              Text("option 2", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                   ),
                SizedBox(height: 10.0),   
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                 width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration( color: const Color.fromARGB(255, 184, 180, 180) ,
                              borderRadius: BorderRadius.circular(20),
                              ),
                child: TextField(controller:option2controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter option 2",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 20.0, fontWeight: FontWeight.bold )
                  ),
                 ),
                 ) ,
          //.............................answers......................
            
              SizedBox(height: 20.0),
              Text("option 3", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                   ),
                SizedBox(height: 10.0),   
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                 width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration( color: const Color.fromARGB(255, 184, 180, 180) ,
                              borderRadius: BorderRadius.circular(20),
                              ),
                child: TextField(controller:option3controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter option 3",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 20.0, fontWeight: FontWeight.bold )
                  ),
                 ),
                ) ,
           //.............................answers......................
            
              SizedBox(height: 20.0),
              Text("option 4", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                   ),
                SizedBox(height: 10.0),   
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                 width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration( color: const Color.fromARGB(255, 184, 180, 180) ,
                              borderRadius: BorderRadius.circular(20),
                              ),
                child: TextField(controller:option4controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter option 4",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 20.0, fontWeight: FontWeight.bold )
                  ),
                 ),
                ) ,
                //.............................correct answers......................
            
              SizedBox(height: 20.0),
              Text("Answer", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
                   ),
                SizedBox(height: 10.0),   
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                 width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration( color: const Color.fromARGB(255, 184, 180, 180) ,
                              borderRadius: BorderRadius.circular(20),
                              ),
                child: TextField(controller:correctcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter correct answer",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 20.0, fontWeight: FontWeight.bold )
                  ),
                 ),
                ) ,    
              // .............insert drop down button.....................
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 198, 177, 206), borderRadius: BorderRadius.circular(10),
                    ),
                child: DropdownButtonHideUnderline( child: DropdownButton<String>(items: coursitem.map((item)=>DropdownMenuItem(value:item, child: Text(item, style: TextStyle(fontSize: 18.0, color: Colors.black),))).toList(), onChanged: (value) => setState(() {
                  this.value=value;
                }),
                dropdownColor: Colors.white,
                hint: Text("Select Catogory"),
                iconSize: 36,
                icon: Icon(Icons.arrow_drop_down, color:Colors.black),
                value: value,
                )),
              ),  
              //................... inseert Add button ............
              SizedBox(height: 20.0),  
                Center( child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    width: 150,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 49, 2, 77), borderRadius: BorderRadius.circular(10),
                    ),
                  child: Center(
                    child: Text("Add",style: TextStyle(color: const Color.fromARGB(255, 253, 251, 251), fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ),  
                  ),
                ),)  
            ],
          ),
        ),
      ),
    );
  }
}