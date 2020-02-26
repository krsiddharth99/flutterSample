import 'package:flutter/material.dart';
import 'package:infliq/LoginPage.dart';
import 'package:infliq/MainHomePage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: 90),
              Container(
                child: Text('Sign Up',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 50.0,
                  ),
                ),
              ),
              SizedBox(height: 60.0,),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 5.0,top: 2),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.0,
                              )
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 5.0,top: 2),
                          labelText: 'Mobile Number',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                          hintText: '907****432',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.0,
                              )
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 5.0,top: 2),
                          labelText: 'E-mail',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                          hintText: 'abc@gmail.com',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 0.0,
                                color: Colors.grey,
                              )
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: TextField(
                        maxLength: 4,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 5.0,top: 2),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                          hintText: '****',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
                          suffix: Text("(minimum 4 letters)"),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 0.0,
                              )
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: MediaQuery.of(context).size.height/16,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left:55.0,top:10.0),
                          child: Text('SIGN IN',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(
                            builder: (_)=>MainHomePage(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: MediaQuery.of(context).size.height/16,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left:30.0,top: 6.0),
                          child: Text('Back',
                            style: TextStyle(
                              fontSize: 28.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(
                            builder: (_)=>LoginPage(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
