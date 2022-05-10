import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:country_icons/country_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart';
import 'package:expandable/expandable.dart';

import 'Items/live_books_widget.dart';
import 'Items/my_scheduled_book_circle.dart';
import 'Items/other_scheduled_book_circle.dart';
import 'live_book_circle_chat.dart';

class BookCircles extends StatefulWidget {
  BookCircles({Key? key}) : super(key: key);

  @override
  State<BookCircles> createState() => _BookCirclesState();
}

class _BookCirclesState extends State<BookCircles> {
  late double width;
  late double height;
    bool filter = false;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            
            setState(() {
              filter =! filter;
            });
          }, icon:Icon(Icons.filter_5_rounded))
        ],
      ),
      body: Container(
        child: ListView(children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 5, top: 10),
        child: Text(
          "Search by: Author ,Title or ISBN",
          style: TextStyle(
              color: Color.fromARGB(255, 214, 208, 208),
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
   Stack(
     children: [
     
        buildBookCircles(),
         filter? buildFilter():Container(),
    
     ],
   )

      //  Container(
      //    padding: EdgeInsets.only( left: 5 ),
      //    child:Text("Live boook circles")
      //  ),
    ]))
    );
    
    
    
    
  }
  buildBookCircles()
{
  return  Stack(
  children: [
    ListView(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    children: [
      buildLiveBookCircleExpandable(),
      buildMyScheduledBookCircleseExpandable(),
      buildOtherScheduledBookCirclesExpandable()
    
    ],
  ),
  filter?GestureDetector(
     onTap: () => setState(() {
      filter = false;
    }),
    child: Container(
    width:width,
    height: height,
    color: Colors.black.withOpacity(0.5),
    
  ),
  ):Container()
  ],

  );
   }
   buildFilter()
   {
     return Container(
       height: height*0.3,
       color: Color.fromARGB(255, 216, 211, 211),
       child: Row(children: [
        Expanded(
          flex: 5,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
           children: [

   GestureDetector(
     child:    Container(
       padding: EdgeInsets.only(top: 10, left: 10),
       child:  Row(
         children: [
            CircleAvatar(backgroundColor: Colors.green,),
            Container(
              color: Color.fromARGB(255, 166, 164, 164),
              height: height*0.03,
              width: width*0.35,
              child: Center(child: Text("Live circles now",style: TextStyle(color: Colors.white, fontSize: 12),),),
            )
         ],
       ),
     )
   ),
   GestureDetector(
     child:    Container(
       padding: EdgeInsets.only(top: 10,left: 10),
       child:  Row(
         children: [
            CircleAvatar(backgroundColor: Color.fromARGB(255, 232, 170, 12),),
            Container(
              color: Color.fromARGB(255, 166, 164, 164),
             height: height*0.03,
              width: width*0.35,
              child: Center(child: Text("Your scheduled circles",style: TextStyle(color: Colors.white,  fontSize: 12),),),
            )
         ],
       ),
     )
   ),
   GestureDetector(
     child:    Container(
       padding: EdgeInsets.only(top: 10,left: 10),
       child:  Row(
         children: [
            CircleAvatar(radius: 17, backgroundColor: Color.fromARGB(255, 15, 84, 149),),
            Container(
              color: Color.fromARGB(255, 166, 164, 164),
              height: height*0.03,
              width: width*0.35,
              child: Center(child: Text("Other available circles",style: TextStyle(color: Colors.white, fontSize: 12),),),
            )
         ],
       ),
     )
   ),
    GestureDetector(
     child:    Container(
        width: width*0.45,
        padding: EdgeInsets.only(top: 10),
       child:Card(
        child:  Row(
           children: [
             Icon(Icons.person),
       Container(
         padding: EdgeInsets.only(left: 3),
         child:  Text("Participates as a speaker", style: TextStyle(fontSize: 12),),
       )
           ],
       )
     ))
   ),
    GestureDetector(
     child:    Container(
        width: width*0.45,
        padding: EdgeInsets.only(top: 10),
       child:Card(
        child:  Row(
           children: [
             Icon(Icons.hearing),
          Container(
         padding: EdgeInsets.only(left: 3),
         child:  Text("Participates as a listener", style: TextStyle(fontSize: 12),),
       )
       
           ],
       )
     ))
   ),
            //  ListTile(
            //    leading: CircleAvatar(backgroundColor: Colors.yellow),
            //    title: Card(
            //      child: Text("Live circles now"),
            //    ),
            //  )
           ],
         )),
        Expanded(
          flex: 5,
          child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
           GestureDetector(
     child:    Container(
        width: width*0.45,
        padding: EdgeInsets.only(top: 10),
       child:Card(
        child:  Row(
           children: [
             Icon(Icons.person),
       Container(
         padding: EdgeInsets.only(left: 3),
         child:  Text("Participates as a speaker", style: TextStyle(fontSize: 12),),
       )
           ],
       )
     ))
   ),
    GestureDetector(
     child:    Container(
        width: width*0.45,
        padding: EdgeInsets.only(top: 10),
       child:Card(
        child:  Row(
           children: [
             Icon(Icons.hearing),
          Container(
         padding: EdgeInsets.only(left: 3),
         child:  Text("Participates as a listener", style: TextStyle(fontSize: 12),),
       )
       
           ],
       )
     ))
   ),GestureDetector(
     child:    Container(
        width: width*0.45,
        height: height*0.03,
        color: Color.fromARGB(100, 171, 168, 168),
        margin: EdgeInsets.only(top: 10),
      )
   ),
   
      GestureDetector(
     child:    Container(
        width: width*0.45,
        height: height*0.03,
       color: Color.fromARGB(100, 171, 168, 168),
        margin: EdgeInsets.only(top: 10),
      )
   ),
   
    GestureDetector(
     child:    Container(
        width: width*0.45,
        height: height*0.03,
         color: Color.fromARGB(100, 171, 168, 168),
        margin: EdgeInsets.only(top: 10),
      )
   ),
   
           ],
         ))
       ]),
     );
   }
   buildLiveBookCircleExpandable(){
     return Column(
       children: [
         Container(
           padding: EdgeInsets.only(left: 5,top: 5),
           alignment: Alignment.topLeft,
           child:Text("Live Book Circles", style: TextStyle(color:Color.fromARGB(255, 214, 208, 208),),)
         ),
         ExpandablePanel(
theme: const ExpandableThemeData(
headerAlignment:
    ExpandablePanelHeaderAlignment.center,
//tapBodyToExpand: true,
//tapBodyToCollapse: true,
hasIcon: false,
),
header: Expandable(
collapsed:  Column(
       children: <Widget>[
         Container(
  alignment: Alignment.topRight,
  decoration: BoxDecoration(
    color:Colors.green
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
  child:Icon(Icons.keyboard_arrow_up),
), 
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child:
                    Card(color: Colors.green, child: buildLiiveBookCircles( ))),
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child:
                    Card(color: Colors.green, child: buildLiiveBookCircles())),
          ],
   ),


 // widget header when the widget is Collapsed
   expanded: Container(
  alignment: Alignment.topRight,
  decoration: BoxDecoration(
    color:Colors.green
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
  child:Icon(Icons.keyboard_arrow_down),
), // header when the widget is Expanded
),
 collapsed: GestureDetector(
   onTap: () => print("see more"),
   child:   Container(
   child: Center(child: Text("More", style: TextStyle(color: Colors.blue),),),
 )
 ),// body when the widget is Collapsed, I didnt need anything here. 
 expanded:Container()/// body when the widget is Expanded
 ) 
       ],
     );
   }
  buildLiveBookCirclesMain() {

    return Container(
      padding: EdgeInsets.only(left: 5, top: 10),
      
      child: Card(
        
        color: Colors.green,
        child: ExpansionTile(
          iconColor: Colors.white,
          collapsedIconColor: Color.fromARGB(255, 203, 217, 204),
  title: Container(),
     
          // ),
          children: <Widget>[
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child:
                    Card(color: Colors.green, child: buildLiiveBookCircles( ))),
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
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LiveBookCircleChat()));
      },
      child:LiveBooksCircles()
    );
  }
   buildMyScheduledBookCircleseExpandable(){
     return Column(
       children: [
         Container(
           padding: EdgeInsets.only(left: 5,top: 5),
           alignment: Alignment.topLeft,
           child:Text("My Scheduled Book Circles", style: TextStyle(color:Color.fromARGB(255, 214, 208, 208),),)
         ),
         ExpandablePanel(
theme: const ExpandableThemeData(
headerAlignment:
    ExpandablePanelHeaderAlignment.center,
//tapBodyToExpand: true,
//tapBodyToCollapse: true,
hasIcon: false,
),
header: Expandable(
collapsed:  Column(
       children: <Widget>[
         Container(
  alignment: Alignment.topRight,
  decoration: BoxDecoration(
    color:Color.fromARGB(255, 232, 170, 12),
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
  child:Icon(Icons.keyboard_arrow_up),
), 
               Container(
                height: height * 0.15,
                color: Colors.black,
                child: Card(
                    color: Color.fromARGB(255, 232, 170, 12),
                    child: buildMyScheduledBookCircles(true))),
            Container(
                height: height * 0.15,
                color: Color.fromARGB(255, 13, 14, 14),
                child: Card(
                    color: Color.fromARGB(255, 232, 170, 12),
                    child: buildMyScheduledBookCircles(false))),
          ],
   ),


 // widget header when the widget is Collapsed
   expanded: Container(
  alignment: Alignment.topRight,
  decoration: BoxDecoration(
    color:Color.fromARGB(255, 232, 170, 12),
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
  child:Icon(Icons.keyboard_arrow_down),
), // header when the widget is Expanded
),
 collapsed: GestureDetector(
   onTap: () => print("see more"),
   child:   Container(
   child: Center(child: Text("More", style: TextStyle(color: Colors.blue),),),
 )
 ),// body when the widget is Collapsed, I didnt need anything here. 
 expanded:Container()/// body when the widget is Expanded
 ) 
       ],
     );
   }

   

  buildMyScheduledBookCircles(button) {
    return  MyScheduledBookCircle(button);
  }

     buildOtherScheduledBookCirclesExpandable(){
     return Column(
       children: [
         Container(
           padding: EdgeInsets.only(left: 5,top: 5),
           alignment: Alignment.topLeft,
           child:Text("Other scheduled book circles", style: TextStyle(color:Color.fromARGB(255, 214, 208, 208),),)
         ),
         ExpandablePanel(
theme: const ExpandableThemeData(
headerAlignment:
    ExpandablePanelHeaderAlignment.center,
//tapBodyToExpand: true,
//tapBodyToCollapse: true,
hasIcon: false,
),
header: Expandable(
collapsed:  Column(
       children: <Widget>[
         Container(
  alignment: Alignment.topRight,
  decoration: BoxDecoration(
    color:Color.fromARGB(255, 15, 84, 149),
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
  child:Icon(Icons.keyboard_arrow_up),
), 
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


 // widget header when the widget is Collapsed
   expanded: Container(
  alignment: Alignment.topRight,
  decoration: BoxDecoration(
    color:Color.fromARGB(255, 15, 84, 149),
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
  child:Icon(Icons.keyboard_arrow_down),
), // header when the widget is Expanded
),
 collapsed: GestureDetector(
   onTap: () => print("see more"),
   child:   Container(
   child: Center(child: Text("More", style: TextStyle(color: Colors.blue),),),
 )
 ),// body when the widget is Collapsed, I didnt need anything here. 
 expanded:Container()/// body when the widget is Expanded
 ) 
       ],
     );
   }

   

  buildOtherScheduledBookCircles() {
    return  OtherScheduledBookCircle();  }
}
