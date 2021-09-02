import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekdicoding/asset.dart';
import 'package:proyekdicoding/content.dart';
import 'package:proyekdicoding/start.dart';

class MainMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                margin: EdgeInsets.only(left: 12, top: 50),
                child: Text(
                  'Choose Your Learning Language',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index){
                        final ContentMaterial content = contentMaterialList[index];
                        return InkWell(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 330,
                                height: 280,
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
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight,
                                      colors: [Color.fromRGBO(52, 160, 164, 1), Color.fromRGBO(118, 200, 147, 1)]),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            content.imageClip,
                                            width: 160,
                                            height: 160,
                                          ),
                                          margin: EdgeInsets.only(left: 6),
                                          alignment: Alignment.center,
                                        ),
                                        Flexible(
                                            child: Container(
                                              margin: EdgeInsets.only(right: 12, left: 10),
                                              child: Text(
                                                content.description,
                                                style: TextStyle(
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto',
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 13),
                                    Container(
                                      height: 50,
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return ContentMenu(content: content);
                                          }));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Color.fromRGBO(181, 228, 140, 1),
                                            shape: new RoundedRectangleBorder(
                                              borderRadius: new BorderRadius.circular(25),
                                            )
                                        ),
                                        child: Text(
                                          'Learn Now',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        );
                      },
                      itemCount: contentMaterialList.length,
                    ),
                  ),
                ),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop
    );
  }
}