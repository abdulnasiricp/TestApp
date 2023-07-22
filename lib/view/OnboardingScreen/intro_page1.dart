import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
           color: Colors.greenAccent,

      child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Flutter',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height:10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Image.asset('Assets/Images/flutter.jpg'),
          ],
        ),
      ),
    );
  }
}