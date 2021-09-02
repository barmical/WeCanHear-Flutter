import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekdicoding/mainmenu.dart';
import 'package:proyekdicoding/register.dart';

class StartMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Text(
                        'Welcome to',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w200
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'WeCanHear',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Festive'
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          'images/logo_1.png',
                          height: 300.0,
                          width: 300.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                          colors: [Color.fromRGBO(97, 194, 255, 1), Color.fromRGBO(162, 221, 246, 1)]),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 200,
                            margin: EdgeInsets.only(top: 30),
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
                          Container(
                            height: 60,
                            width: 200,
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return RegisterMenu();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(181, 228, 140, 1),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(25),
                                ),
                              ),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(height: 80),
                        ],
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
