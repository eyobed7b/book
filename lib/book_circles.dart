import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:country_icons/country_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookCircles extends StatefulWidget {
  BookCircles({Key? key}) : super(key: key);

  @override
  State<BookCircles> createState() => _BookCirclesState();
}

class _BookCirclesState extends State<BookCircles> {
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
        child: ListView(children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 5, top: 10),
        child: Text(
          "Search by: Author ,Title or ISBN",
          style: TextStyle(
              color: Color.fromARGB(255, 159, 157, 157),
              fontSize: 16.0,
              fontWeight: FontWeight.w500),
        ),
      ),
      Container(
        // decoration: BoxDecoration(
        //   color: Colors.white,),
        width: width * 0.2,
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: CupertinoSearchTextField(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 1),
            color: Colors.white,
          ),
          onChanged: (value) {},
          onSubmitted: (value) {},
          placeholder: "Ryan Daniel Moran",
          itemSize: 30,
          itemColor: CupertinoColors.black,
          prefixIcon: Icon(Icons.camera_alt),
          suffixIcon: Icon(CupertinoIcons.search),
          suffixMode: OverlayVisibilityMode.notEditing,
        ),
      ),
      buildLiveBookCirclesMain(),
      buildMyScheduledBookCirclesMain(),
      buildOtherScheduledBookCirclesMain()

      //  Container(
      //    padding: EdgeInsets.only( left: 5 ),
      //    child:Text("Live boook circles")
      //  ),
    ]));
  }

  buildLiveBookCirclesMain() {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 10),
      child: Card(
        color: Colors.green,
        child: ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Color.fromARGB(255, 203, 217, 204),

          title: ListTile(
            tileColor: Colors.green,
            title: Text(
              "Live book circles",
              style: TextStyle(
                  color: Color.fromARGB(255, 232, 244, 232),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          children: <Widget>[
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child:
                    Card(color: Colors.green, child: buildLiiveBookCircles())),
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child:
                    Card(color: Colors.green, child: buildLiiveBookCircles())),
          ],
        ),
      ),
    );
  }

  buildLiiveBookCircles() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(width: 15),
          Expanded(
            flex: 3,
            child:        Stack(
                  children: <Widget>[
                     Container(
                width: width * 0.18,
                height: height * 0.13,
                color:Color.fromARGB(255, 43, 104, 45),
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

        child:Image.asset('icons/flags/png/us.png',fit: BoxFit.fill, package: 'country_icons'),
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
                padding: EdgeInsets.only(top: 5, left: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Ryan Daniel Moran",
                              style: TextStyle(
                                fontSize: 12,
                              ))),
                      Container(
                          padding: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Text("12 MONTHS TO \§1 MILLION",
                              style: TextStyle(
                                fontSize: 12,
                              ))),
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(""" How to pick a winning product,
Build a real business and become a
seven-figure entrepreneur """,
                              style: TextStyle(
                                fontSize: 12,
                              )))
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
                        Icon(Icons.wifi, color: Colors.white, size: 13),
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
                        Icon(Icons.message, color: Colors.white, size: 20),
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

  buildMyScheduledBookCirclesMain() {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 10),
      child: Card(
        color: Color.fromARGB(255, 232, 170, 12),
        child: ExpansionTile(
          iconColor: Color.fromARGB(255, 0, 0, 0),
          collapsedIconColor: Color.fromARGB(255, 35, 38, 36),

          title: ListTile(
            //  tileColor: Colors.green,
            title: Text(
              "My scheduled book circles",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          children: <Widget>[
            Container(
                height: height * 0.15,
                color: Colors.black,
                child: Card(
                    color: Color.fromARGB(255, 232, 170, 12),
                    child: buildMyScheduledBookCircles())),
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child: Card(
                    color: Color.fromARGB(255, 232, 170, 12),
                    child: buildMyScheduledBookCircles())),
          ],
        ),
      ),
    );
  }

  buildMyScheduledBookCircles() {
    return Row(
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
                              ))),
                      Container(
                          padding: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Text("12 MONTHS TO \§1 MILLION",
                              style: TextStyle(
                                fontSize: 12,
                              ))),
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(""" How to pick a winning product,
Build a real business and become a
seven-figure entrepreneur """,
                              style: TextStyle(
                                fontSize: 12,
                              )))
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
                        Icon(Icons.wifi, color: Colors.white, size: 13),
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
                        Icon(Icons.message, color: Colors.white, size: 20),
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

  buildOtherScheduledBookCirclesMain() {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 10),
      child: Card(
        color: Color.fromARGB(255, 15, 84, 149),
        child: ExpansionTile(
          iconColor: Color.fromARGB(255, 255, 253, 253),
          collapsedIconColor: Color.fromARGB(255, 239, 244, 241),
         // backgroundColor: Color.fromARGB(255, 250, 252, 250),
          title: ListTile(
            //  tileColor: Colors.green,
            title: Text(
              "Other scheduled book circles ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          children: <Widget>[
            Container(
                height: height * 0.15,
                color: Colors.black,
                child: Card(
                    color: Color.fromARGB(255, 15, 84, 149),
                    child: buildOtherScheduledBookCircles())),
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child: Card(
                    color: Color.fromARGB(255, 15, 84, 149),
                    child: buildOtherScheduledBookCircles())),
          ],
        ),
      ),
    );
  }

  buildOtherScheduledBookCircles() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(width: 15),
          Expanded(
            flex: 3,
            child:   Stack(
                  children: <Widget>[
                     Container(
                width: width * 0.18,
                height: height * 0.13,
                color: Color.fromARGB(255, 8, 52, 93),
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

        child:Image.asset('icons/flags/png/us.png',fit: BoxFit.fill, package: 'country_icons'),
    )
)


                        ),
                      )
                    )
                  ]
                    )),
          Expanded(
            flex: 8,
            child: Container(
                padding: EdgeInsets.only(top: 5, left: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Ryan Daniel Moran",
                              style: TextStyle(
                                fontSize: 12,
                              ))),
                      Container(
                          padding: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Text("12 MONTHS TO \§1 MILLION",
                              style: TextStyle(
                                fontSize: 12,
                              ))),
                      Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(""" How to pick a winning product,
Build a real business and become a
seven-figure entrepreneur """,
                              style: TextStyle(
                                fontSize: 12,
                              )))
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
                        Icon(Icons.wifi, color: Colors.white, size: 13),
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
                        Icon(Icons.message, color: Colors.white, size: 20),
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
