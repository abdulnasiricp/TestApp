import 'package:flutter/material.dart';
import 'package:new_app/pages/about.dart';
import 'package:new_app/pages/gallery.dart';
import 'package:new_app/pages/main_page.dart';
import 'package:new_app/pages/setting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  var pages = [
    const MainScreen(),
    const GalleryScreen(),
    const SettingScreen(),
    const AboutScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Main'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Gallery'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'About'),
        ],
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        onTap: onitemsSelected,
      ),
    );
  }

  void onitemsSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
