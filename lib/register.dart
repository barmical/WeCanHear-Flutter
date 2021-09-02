import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekdicoding/start.dart';
import 'package:proyekdicoding/mainmenu.dart';

class RegisterMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    'images/profile.png',
                    height: 170.0,
                    width: 170.0,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat'
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(top: 40, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color.fromRGBO(97, 194, 255, 1), Color.fromRGBO(162, 221, 246, 1)]),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'E-Mail',
                            labelStyle: TextStyle(
                              color: Colors.black54
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        style: TextStyle(
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                                color: Colors.black54
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.black54
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.black
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(
                                color: Colors.black54
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black)
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 200,
                margin: EdgeInsets.only(top: 20, left: 90),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return MainMenu();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(181, 228, 140, 1),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25),
                      )
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: 20, right: 10),
          height: 50,
          width: 50,
          child: FloatingActionButton(
            backgroundColor: Colors.white70,
            child: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return StartMenu();
              }));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop
    );
  }
}
