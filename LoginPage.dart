import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infliq/MainHomePage.dart';
import 'package:infliq/SignUp.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                child: Text('Login',
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
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top:10,
                            child: Icon(Icons.mail,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40.0),
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
                                      color: Colors.grey,
                                    )
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top:10,
                              child: Icon(Icons.lock,
                                color: Colors.white,
                                size: 35.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 40.0),
                              child: TextField(
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
                                  hintText: '***********',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18.0,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                      )
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 90.0),
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
                    SizedBox(height: 20.0),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Text('Forgot Password?',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      height: MediaQuery.of(context).size.height/16,
                      width: MediaQuery.of(context).size.width/1.4,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left:23.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.face,
                                size: 27.0,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10.0),
                              Text('Sign in with Facebook',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.only(left: 64.0),
                      child: Row(
                        children: <Widget>[
                          Text("'Don't have an account .",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                          ),
                          SizedBox(width: 3.0),
                          InkWell(
                            child: Text('Sign Up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.0,
                                color: Colors.red,
                                fontSize: 19.0,
                              ),
                            ),
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(
                                builder: (_) => SignUp()),
                            ),
                          ),
                        ],
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
