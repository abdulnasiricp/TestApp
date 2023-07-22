import 'package:flutter/material.dart';
import 'package:new_app/Widgets/mydrawer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple.withOpacity(0.3),

        title: const Text('Setting'),
        centerTitle: true,
        
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Setting')],
        ),
      ),
    );
  }
}
