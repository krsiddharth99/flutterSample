import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infliq/Library.dart';
import 'package:infliq/MyBook.dart';
import 'package:infliq/Search.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  int _currentIndex=0;
  final List<Widget> _widgetOption= [
    MyBook(),
    Library(),
    Search(),
  ];

  void _onTapOption(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            child: AppBar(
              backgroundColor: Colors.black,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.notifications,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onPressed: null
                ),
              ],
            ),
            preferredSize: Size.fromHeight(60.0),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10.0,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.shifting,
            onTap: _onTapOption,
            selectedFontSize: 15.0,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books,
                    size: 35.0,
                  ),
                  title: Text('My Book',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_library,
                    size: 35.0,
                  ),
                  title: Text('Library',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search,
                    size: 35.0,
                  ),
                  title: Text('Search',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
              ),
            ],
        ),
        drawer: new Drawer(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.deepPurpleAccent,
                      ],
                    ),
                  ),
                  accountEmail: Text('sidplayer4@gmail.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                  accountName: Text('Siddharth Kumar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("image/farak.jpg"),
                  ),
                  otherAccountsPictures: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('S',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person,
                  color: Colors.black,
                ),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text('Profile'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.payment,
                  color: Colors.black,
                ),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text('Payment'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.book,
                  color: Colors.black,
                ),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text('Books'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.file_download,
                  color: Colors.black,
                ),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text('Download'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings,
                  color: Colors.black,
                ),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text('Setting'),
                onTap: (){},
              ),
              Divider(),
            ],
          ),
        ),
        body: SafeArea(
            child: _widgetOption.elementAt(_currentIndex),
        ),
      ),
    );
  }
}
