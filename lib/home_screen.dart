// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

//DefaultTabController is like the section in the AppBar that takes the title through the TabBar widget and the contents through TabBarView widget as done below:-
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),

          //defining how may tabs section we need
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text('Chats')),
            Tab(child: Text('Status')),
            Tab(child: Text('Call')),
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            //using the PopUpMenuButton to show the options
            PopupMenuButton(
                child: Icon(Icons.more_horiz_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      PopupMenuItem(
                        child: Text('New Group'),
                        value: '1',
                      ),
                      PopupMenuItem(
                        child: Text('Settings'),
                        value: '2',
                      ),
                      PopupMenuItem(
                        child: Text('LogOut'),
                        value: '3',
                      ),
                    ])
          ],
        ),
        //using to load the contents for the each tabs
        body: TabBarView(children: [
          Text('camera'),
          ListView.builder(
              itemCount: 20,
              itemBuilder: ((context, index) => ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/lakib.jpg')),
                    title: Text('Lakib Max'),
                    subtitle: Text('Where is my money?'),
                    trailing: Text('3:00am'),
                  ))),
          ListView.builder(
              itemCount: 20,
              itemBuilder: ((context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index == 0
                          ? Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8),
                              child: Text(
                                'New updates',
                              ),
                            )
                          : ListTile(
                              leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/lakib.jpg')),
                              title: Text('Lakib Max'),
                              subtitle: Text('1 hour ago'),
                            ),
                    ],
                  ))),
          ListView.builder(
              itemCount: 20,
              itemBuilder: ((context, index) => ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/lakib.jpg')),
                    title: Text('Lakib Max'),
                    subtitle: Text(
                      index / 2 == 0
                          ? 'you missed audio call'
                          : 'you missed video call',
                      style: TextStyle(color: Colors.red),
                    ),
                    trailing: Icon(
                      index / 2 == 0 ? Icons.phone : Icons.video_call,
                      color: Colors.red,
                    ),
                  ))),
        ]),
      ),
    );
  }
}
