import 'package:flutter/material.dart';

class Adquize extends StatefulWidget {
  const Adquize({super.key});

  @override
  State<Adquize> createState() => _AdquizeState();
}

class _AdquizeState extends State<Adquize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar: AppBar(
        title: Text("Add Quize", style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),),

      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Text("    Enter the quiz", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
               width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration( color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            ),
                            

            )
            
          ],
        ),
      ),
    );
  }
}