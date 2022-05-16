// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationPage3 extends StatefulWidget {
  const AnimationPage3({Key? key}) : super(key: key);

  @override
  State<AnimationPage3> createState() => _AnimationPage3State();
}

class _AnimationPage3State extends State<AnimationPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(title: Text("A N I M A T I O N  [3]"), backgroundColor: Colors.blue[100],),
      body: Column(
        children: [

          SizedBox(height: 50,),
          Center(child: Container(
            height: 400,
            width: 400,
            child: Lottie.network("https://assets3.lottiefiles.com/packages/lf20_vdxqg6g7.json"))),
            
            SizedBox(height: 30,),
          Text("F o l l o w  O u r  S o c i a l s",),
          Text("@ D R Y L E S T", style: TextStyle(fontWeight: FontWeight.bold),)
          
        ],
      ),
    );
    
  }
}