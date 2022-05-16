// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnimationPage1 extends StatefulWidget {
  const AnimationPage1({Key? key}) : super(key: key);

  @override
  State<AnimationPage1> createState() => _AnimationPage1State();
}

class _AnimationPage1State extends State<AnimationPage1>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  late PageController _pageController = PageController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("R O C K E T  [1]", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [

          SizedBox(height: 50,),
          Center(
            child: Container(
            height: 400,
            width: 400,
            child: Lottie.network("https://assets5.lottiefiles.com/packages/lf20_xiussssy.json")),
          ),

          SizedBox(height: 30,),
          Text("H e y 👋",),

        ],
      )
    );
  }
}
