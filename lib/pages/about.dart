import 'package:flutter/material.dart';
import 'package:new_app/Widgets/mydrawer.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.withOpacity(0.3),
        title: const Text('About'),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('About')],
        ),
      ),
    );
  }
}
