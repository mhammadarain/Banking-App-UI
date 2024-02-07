import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff02223b),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 300,),
            Center(
              child: Image(
                  height: 320,
                  width:  320,
                  image: AssetImage("assets/logo.png")),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 170,),

                AnimatedTextKit(animatedTexts: [
                  FadeAnimatedText("Al-Hammad Bank",
                      textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.w200,color: Colors.white))
                ],
                  totalRepeatCount:22 ,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
