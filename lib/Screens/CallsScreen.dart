import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.lightGreenAccent,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.brown,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.lightGreenAccent,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.brown,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.lightGreenAccent,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.brown,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.purple,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
