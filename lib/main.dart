import 'package:flutter/material.dart';
import 'package:tab_bar/pages/home_page.dart';
import 'package:tab_bar/pages/person.dart';
import 'package:tab_bar/pages/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              title: Text('T A B  B A R'),
            ),
            body: Column(
              children: [
                TabBar(tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.deepPurple,
                    ),
                  )
                ]),
                Expanded(
                    child: TabBarView(children: [Setting(), Person(), Home()]))
              ],
            ),
          )),
    );
  }
}
