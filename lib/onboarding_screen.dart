// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animations/animation_1.dart';
import 'package:animations/animation_2.dart';
import 'package:animations/animation_3.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              AnimationPage1(),
              AnimationPage2(),
              AnimationPage3(),
            ],
          ),

          Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                
                GestureDetector(
                  onTap: () {
                    _controller.jumpTo(2);
                  },
                  child: Text("SKIP")),

                SmoothPageIndicator(controller: _controller, count: 3),

                onLastPage ? 
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text("DONE")
                ) : 

                GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500), 
                      curve: Curves.easeIn,);
                  },
                  child: Text("NEXT")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}