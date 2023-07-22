import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      
       child:  Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
             const Text('Dart',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height:10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('A programming language optimized for building user interfaces with features such as sound null safety , the spread operator for expanding collections..',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Image.asset('Assets/Images/dart.jpg'),
          ],
             ),
       ),
    );
  }
}