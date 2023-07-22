import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_app/Widgets/mydrawer.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  String imagePath = "";
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.withOpacity(0.3),
        title: const Text('Gallery'),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body:  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gallery')
          
          ],
        ),
      ),
    );
  }
}
