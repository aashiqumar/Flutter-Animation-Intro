// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationPage2 extends StatefulWidget {
  const AnimationPage2({Key? key}) : super(key: key);

  @override
  State<AnimationPage2> createState() => _AnimationPage2State();
}

class _AnimationPage2State extends State<AnimationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(title: Text("A N I M A T I O N  [2]"),
        backgroundColor: Colors.cyan[100],
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(
            child: Container(
            height: 400,
            width: 400,
            child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_fppsfngm.json")),
          ),

          SizedBox(height: 30,),
          Text("u s e  t h i s  c o d e  i n  y o u r  p r o j e c t  😃",),
          Text("www.aashiqumar.com", style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      )
    );
  }
}