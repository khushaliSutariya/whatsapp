import 'package:flutter/material.dart';

import 'CallsScreen.dart';
import 'ChatsScreen.dart';
import 'StatusScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  var selected = 0;
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
    _controller!.addListener(getdata);
  }

  getdata() {
    var index = _controller!.index;
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink.shade200,
            title: (selected == 0)
                ? Text("Chats")
                : (selected == 1)
                    ? Text("Status")
                    : Text("Calls"),
            bottom: TabBar(
              controller: _controller,
              indicatorColor: Colors.pink,
              onTap: (index) {
                setState(() {
                  selected = index;
                });
              },
              tabs: [
                Tab(
                  child: Text(
                    "Chats",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Status",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Calls",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            actions: [
              (selected == 0)
                  ? PopupMenuButton(
                      onSelected: (value) {
                        (value == 0)
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ChatsScreen()))
                            : (value == 1)
                                ? Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => StatusScreen()))
                                : Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CallsScreen()));
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 0,
                          child: Row(
                            children: [
                              Icon(Icons.add, color: Colors.black),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("New Group"),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 1,
                          child: Row(
                            children: [
                              Icon(Icons.link, color: Colors.black),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("Linked devices"),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Row(
                            children: [
                              Icon(Icons.payment, color: Colors.black),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("Payment"),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Row(
                            children: [
                              Icon(Icons.settings, color: Colors.black),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("Setting"),
                            ],
                          ),
                        ),
                      ],
                    )
                  : (selected == 1)
                      ? PopupMenuButton(
                          onSelected: (value) {
                            (value == 0)
                                ? Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ChatsScreen()))
                                : Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CallsScreen()));
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 0,
                              child: Row(
                                children: [
                                  Icon(Icons.privacy_tip, color: Colors.black),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text("Status privacy"),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: Row(
                                children: [
                                  Icon(Icons.settings, color: Colors.black),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text("Settings"),
                                ],
                              ),
                            ),
                          ],
                        )
                      : PopupMenuButton(
                          onSelected: (value) {
                            (value == 0)
                                ? Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ChatsScreen()))
                                : Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => StatusScreen()));
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 0,
                              child: Row(
                                children: [
                                  Icon(Icons.clear_all, color: Colors.black),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text("Clear call log"),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 1,
                              child: Row(
                                children: [
                                  Icon(Icons.settings, color: Colors.black),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text("Settings"),
                                ],
                              ),
                            ),
                          ],
                        ),
            ],
          ),
          body: TabBarView(
            controller: _controller,
            children: [
              ChatsScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          )),
    );
  }
}
