import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'SignUp.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height/2.5,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: Colors.black26,
                ),
              ),
              SizedBox(height: 70.0),
              Container(
                margin: EdgeInsets.only(top:30.0),
                height: MediaQuery.of(context).size.height/14,
                width: MediaQuery.of(context).size.width/1.6,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.only(top: 13.0,left: 76.0),
                    child: Text('LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      ),
                    ),
                  ),
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(
                      builder:(_)=> LoginPage(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:30.0),
                height: MediaQuery.of(context).size.height/14,
                width: MediaQuery.of(context).size.width/1.6,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.only(top: 13.0,left: 67.0),
                    child: Text('SIGNUP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>SignUp(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                margin: EdgeInsets.only(left: 105.0),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Text('Contact',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 23.0,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text('|',
                        style: TextStyle(
                        color: Colors.grey,
                        fontSize: 23.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        child: Text('Help',
                        style: TextStyle(
                        color: Colors.grey,
                        fontSize: 23.0,
                            ),
                          ),
                        ),
                    ],
                  ),
              ),
              SizedBox(height:16.0),
              Container(
                child: InkWell(
                  child: Text('Terms & Condition*',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
