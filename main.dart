import 'package:flutter/material.dart';
import 'dart:async';
import 'MainPage.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()async=>Navigator.push(context, MaterialPageRoute(
        builder: (_)=>MainPage(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 6,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                    SizedBox(height: 20.0,),
                    Text('Wait for a Second',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}


