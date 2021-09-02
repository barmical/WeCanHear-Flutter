import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekdicoding/asset.dart';
import 'package:proyekdicoding/mainmenu.dart';
import 'package:proyekdicoding/slider.dart';

class ContentMenu extends StatelessWidget {

  final ContentMaterial content;
  ContentMenu({required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 12, top: 50),
                child: Text(
                  content.description,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 600,
                width: 360, decoration: BoxDecoration(
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
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight,
                        colors: [Color.fromRGBO(52, 160, 164, 1), Color.fromRGBO(118, 200, 147, 1)]),
                  ),
                child: Column(
                  children: [
                    ContentSlider(content: content),

                  ]
                )
              ),
              SizedBox(height: 60),
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
                return MainMenu();
              }));
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop
    );
  }
}
