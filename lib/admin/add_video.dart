import 'package:flutter/material.dart';
class Advideo extends StatefulWidget {
  const Advideo({super.key});

  @override
  State<Advideo> createState() => _AdvideoState();
}

class _AdvideoState extends State<Advideo> {
  final List<String> coursitem = ['Cyber Security', 'cryptography', 'HTML', 'JAVA'];

  TextEditingController videocontroller= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        title: Text(
          "Add Video",
          style: TextStyle(
              color: Color.fromARGB(255, 252, 251, 251),
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 70, 3, 97),
      ),
      
      body: Container(
        margin: EdgeInsets.only(left:20.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(10)),
              child: TextField(
                  controller:videocontroller,
                  decoration: InputDecoration(
                  hintText: 'Enter URL',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18.0 , fontWeight: FontWeight.bold),
                  
                ),
              ),
            ),
            // Dropdown for selecting category
              /*SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 198, 177, 206),
                  borderRadius: BorderRadius.circular(10),
                ),
                  child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                        items: coursitem.map((item) => DropdownMenuItem(
                              value: item,
                                child: Text(
                                item,
                                style: TextStyle(fontSize: 18.0, color: Colors.black),
                              ),
                            ),).toList(),
                    onChanged: (value) => setState(() {
                      this.value=value;
                    }),
                    dropdownColor: Colors.white,
                    hint: Text("Select Category"),
                    iconSize: 36,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                    value: value,
                  ),
                ),*/
             // ),
    // ..........Button to add the video............
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {          
                    },
                    child: Text("Add"),
                  ),
                  
                ],
              ),
          ],
        )
      )      
                  
    );
              
    
  }
}