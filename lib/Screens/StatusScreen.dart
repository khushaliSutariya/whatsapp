import 'package:flutter/material.dart';
class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Card(
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text("khushali"),
                    leading: CircleAvatar(child: Text("K")),
                    trailing: Text("8.30 AM"),
                    subtitle: Text("I am fine"),
                  ),
                ),
                Divider(height: 10.0,color: Colors.yellow,thickness: 5.0),
                Card(
                  child: ListTile(
                    title: Text("khushali"),
                    leading: CircleAvatar(child: Text("K")),
                    trailing: Text("8.30 AM"),
                    subtitle: Text("I am fine"),
                  ),
                ),
                Divider(height: 10.0,color: Colors.yellow,thickness: 5.0),
                Card(
                  child: ListTile(
                    title: Text("khushali"),
                    leading: CircleAvatar(child: Text("K")),
                    trailing: Text("8.30 AM"),
                    subtitle: Text("I am fine"),
                  ),
                ),
                Divider(height: 10.0,color: Colors.yellow,thickness: 5.0),
                Card(
                  child: ListTile(
                    title: Text("khushali"),
                    leading: CircleAvatar(child: Text("K")),
                    trailing: Text("8.30 AM"),
                    subtitle: Text("I am fine"),
                  ),
                ),
                Divider(height: 10.0,color: Colors.yellow,thickness: 5.0),
                Card(
                  child: ListTile(
                    title: Text("khushali"),
                    leading: CircleAvatar(child: Text("K")),
                    trailing: Text("8.30 AM"),
                    subtitle: Text("I am fine"),
                  ),
                ),
                Divider(height: 10.0,color: Colors.yellow,thickness: 5.0),
                Card(
                  child: ListTile(
                    title: Text("khushali"),
                    leading: CircleAvatar(child: Text("K")),
                    trailing: Text("8.30 AM"),
                    subtitle: Text("I am fine"),
                  ),
                ),
                Divider(height: 10.0,color: Colors.yellow,thickness: 5.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: Colors.blue,
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: Colors.red,
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: Colors.yellow,
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: Colors.pink,
                ),
              ],
            ),
          )
        ],),
      ),
    );
  }
}
