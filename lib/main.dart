import 'package:flutter/material.dart';
import 'package:flutter_basic_bottom_navigation_bar/first_fragment.dart';
import 'package:flutter_basic_bottom_navigation_bar/second_fragment.dart';
import 'package:flutter_basic_bottom_navigation_bar/third_fragment.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
            //Setting theme color
            primaryColor: Colors.red,
            //Setting button color
            accentColor: Colors.red,
            //Setting Text Theme
            textTheme: TextTheme(
              //Setting the body1 Text Color
              body1: TextStyle(
                color: Colors.black
              )
            )

      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyApp> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    FirstFragment(),
    SecondFragment(),
    ThirdFragment()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      //setting the index beloved to the class
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //Setting the index on clicked
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile')
          )
        ],
      ),
    );
  }

//On click method
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    }); 
  }
}