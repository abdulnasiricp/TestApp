import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
       child:  Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text('API',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const SizedBox(height:10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('application programming interface, is a set of defined rules that enable different applications to communicate with each other.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            Image.asset('Assets/Images/api.png'),
          ],
             ),
       ),
      

    );
  }
}