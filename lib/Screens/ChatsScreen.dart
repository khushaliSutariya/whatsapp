import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
        children: [
          Container(width: 50.0,
          height: 50.0,
          color: Colors.deepPurpleAccent,),
          Container(width: 50.0,
            height: 50.0,
            color: Colors.red,),
          Container(width: 50.0,
            height: 50.0,
            color: Colors.greenAccent,),
          Container(width: 50.0,
            height: 50.0,
            color: Colors.yellow,),
        ],),
      ),
    );
  }
}
