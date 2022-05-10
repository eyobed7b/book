







import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';


class MyScheduledBookCircle extends StatelessWidget{
bool button = false; double width =0;
 double height =0;
   MyScheduledBookCircle(this.button);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(width: 10),
          Expanded(
            flex: 3,
            child:
                  Stack(
                  children: <Widget>[
                     Container(
                width: width * 0.18,
                height: height * 0.13,
                color: Color.fromARGB(255, 110, 97, 19),
                     ),
                    Positioned(
         left: 42,
         bottom: 33,
                      child: Container(
                        alignment: Alignment.topRight,
                        height: height * 0.1,
                        width: width * 0.1,
                        child: CircleAvatar(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      width: 30,
      height: 30,
      child: ClipOval(

        child:Image.asset('icons/flags/png/se.png',fit: BoxFit.fill, package: 'country_icons'),
    )
)


                        ),
                      )
                    )
                  ]
                    )

                ),

          Expanded(
            flex: 8,
            child: Container(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Ryan Daniel Moran",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600
                              ))),
                      Container(
                          padding: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Text("12 MONTHS TO \§1 MILLION",
                              style: TextStyle(
                               fontSize: 12,
                                fontWeight: FontWeight.w600
                              ))),
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: button?Text(""" How to pick a winning product,
Build a real business and become a
seven-figure entrepreneur """,
                              style: TextStyle(
                               fontSize: 12,
                                fontWeight: FontWeight.w600
                              )):Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                width:width*0.3,
                                height:height*0.03,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:  BorderRadius.circular(20)),
                                child:Center(
                               child:Text("START",style: TextStyle(
                                fontSize: 18, color:Colors.white, fontWeight: FontWeight.w700
                              ))
                                )
                              ),
                              )
                              
                              )
                    ])),
          ),
          Expanded(
            flex: 3,
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Row(children: <Widget>[
                        Icon(Icons.person, color: Colors.white, size: 13),
                        Text("7",
                            style:
                                TextStyle(fontSize: 10, color: Colors.white)),
                        SizedBox(width: 10),
                        Icon(Icons.hearing, color: Colors.white, size: 13),
                        Text("240",
                            style: TextStyle(fontSize: 10, color: Colors.white))
                      ])),
                  Container(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text("Session 1 of 5",
                          style: TextStyle(fontSize: 10, color: Colors.white))),
                  Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(" 12:00 13:00",
                          style: TextStyle(fontSize: 12, color: Colors.white))),
                  Container(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Row(children: <Widget>[
                                   Badge(
      position: BadgePosition.topEnd(top: 0, end: 3),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
       "2",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
      child: IconButton(icon:  Icon(Icons.message, color: Colors.white, size: 20), onPressed: () {}),
    ),
                        SizedBox(width: 5),
                        Column(children: [
                          Icon(Icons.person, color: Colors.white, size: 20),
                          Text("Admin",
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white))
                        ])
                      ])),
                ])),
          )
        ]);
  }

}





