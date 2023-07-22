import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/pages/about.dart';
import 'package:new_app/pages/gallery.dart';
import 'package:new_app/pages/home.dart';
import 'package:new_app/pages/setting.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text('Abdul Nasir'),
              accountEmail: const Text('abdulnasiricp@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset('Assets/Images/nasir.jpg')),
              )),
          ListTile(
            onTap: () {
              Get.to(const HomeScreen());
              
            },
            title: const Text('Home'),
            leading: const Icon(Icons.home),
          ),
           ListTile(
            onTap: () {
              Get.to(const GalleryScreen());
              
            },
            title: const Text('Gallery'),
            leading: const Icon(Icons.photo_album),
          ),
           ListTile(
            onTap: (){
              Get.to(const AboutScreen());


            },
            title: const Text('About'),
            leading: const Icon(Icons.help),
          ),
           ListTile(onTap: (){
              Get.to(const SettingScreen());

           },
            title: const Text('Setting'),
            leading: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
