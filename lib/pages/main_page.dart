// ignore_for_file: avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/Widgets/mydrawer.dart';
import 'package:new_app/Widgets/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<String> imgList = [
    "https://i.tribune.com.pk/media/images/7UOKRCYY7NJTFHXVVO5XFZLCK41641535289-0/7UOKRCYY7NJTFHXVVO5XFZLCK41641535289-0.jpg",
    "https://static.pakwheels.com/2022/09/Ferrari-Purosangue-revealed-11-scaled.jpg",
    "https://static.pakwheels.com/2022/09/220913143142-02-ferrari-purosangue-1024x576.jpg",
    "https://cache3.pakwheels.com/ad_pictures/8669/honda-civic-oriel-1-8-i-vtec-cvt-2019-86699420.webp"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.withOpacity(0.3),
        title: const Text('Main Screen'),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Cars Collection', style: Utils.heading1),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 1000),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true),
            ),
             const SizedBox(
              height: 20,
            ),
            Divider(color: Utils.secondaryColor,)
          ],
        ),
      ),
    );
  }
}
