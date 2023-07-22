import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MyButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 250,

        decoration: BoxDecoration(
          color: Colors.green[700],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))),
      ),
    );
  }
}
