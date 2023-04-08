import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Homepage.dart';

import 'Screens/ChatsScreen.dart';
import 'Screens/Loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Homepage()
    );
  }
}


