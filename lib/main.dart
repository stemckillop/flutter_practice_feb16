import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
        Container(
          color: const Color(0xFFbfa3ff),
          child: 
        Stack(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/pixelpro_digital_icon.png"),
                const SizedBox(height: 50,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      TextButton(style: TextButton.styleFrom(elevation: 8.0, backgroundColor: Colors.white, foregroundColor: Colors.black, minimumSize: const Size.fromHeight(56)), onPressed: () {}, child: const Text("Login", style: TextStyle(fontSize: 14),)),
                      const SizedBox(height: 16,),
                      OutlinedButton(style: OutlinedButton.styleFrom(side: const BorderSide(color:Colors.white), foregroundColor: Colors.white, backgroundColor: const Color(0xFFbfa3ff), minimumSize: const Size.fromHeight(56)), onPressed: () {}, child: const Text("Sign Up", style: TextStyle(fontSize: 14)))
                    ],),)
                ],
            ),
        ),
        Positioned(
          bottom: 40,
          left: 0, 
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: TextButton(style: TextButton.styleFrom(foregroundColor: Colors.black ), onPressed: () {}, child: const Text("Continue as a guest", style: TextStyle(color: Colors.white),)),
          ) 
        )
        
      ])
    )
      )
    );
  }
}

