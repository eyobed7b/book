
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:expandable/expandable.dart';

class LiveBookCircleChat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LiveBookCircleChatState();
  }

}

class LiveBookCircleChatState extends State<LiveBookCircleChat>{
   late double width;
  late double height;
    bool filter = false;
    bool message = false;

    List<Map<String, dynamic>> admin =[
      {
      "name":"Monir Asqari",
      "role":"admin",
      "status":"speaker","language":"se"
    },
      {
      "name":"Fredrik Sven",
      "role":"Co-admin",
"status":"speaker","language":"se"
    },
      {
      "name":"Anders J",
      "role":"Co-admin",
     "status":"speaker","language":"se"
    },
      {
      "name":"Mohammed",
      "role":"Usman",
      "status":"speaker","language":"se"
    },
      {
      "name":"Eyobed",
      "role":"co-admin",
      "status":"speaker","language":"se"
    },
      {
      "name":"Abdu  ",
      "role":"co-admin",
      "status":"speaker","language":"se"
    },
 
    
    ];
    List<Map<String, dynamic>> users =[
      {
      "name":"Natan",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Hiwot",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Anders J",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Dagim",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Aicha  ",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":" Yonaathan",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Ephirem",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Mohammed",
      "role":"Usman",
      "status":"listner","language":"se"
    },
      {
      "name":"Aicha ",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Monir Asqari",
      "role":null,
      "status":"listner","language":"se"
    },
      {
      "name":"Monir Asqari",
      "role":null,
      "status":"listner","language":"se"
    },
    
    ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat room"),
      ),
      body: Column(
        children: [
          buildTopBanner(),
          buildAdminChatArea(),
          buildCustomeExpandable(),
          Spacer(),
          buildBottomWidget()

          // buildUsersExpandedWidget()
        ],
      ),
    );
  }
  buildTopBanner(){
    return Container(
            height: height*0.06 ,
            color: Colors.green,
            child: Row(
              children: [
       Expanded( flex: 2,child: Badge(
      position: BadgePosition.topEnd(top: 0, end: 3),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
       "3",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
      child: IconButton(icon:  Icon(Icons.mic, color: Colors.white, size: 24), onPressed: () {}),
    ),),
Expanded( flex: 2,child:     CircleAvatar(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      width: 25,
      height: 25,
      child: ClipOval(

        child:Image.asset('icons/flags/png/se.png',fit: BoxFit.fill, package: 'country_icons'),
    )
)


                        ),),
                       Expanded(
                         flex: 16,
                         child:  Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("12 MONTHS TO 1 MILLION",  style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w700)),
                            Text("Session 1: Tuesday 2022-07-10 19:00 - 20:00", style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),),
                        Expanded( flex: 2,child: IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.share),
                        )),

                      Expanded(
                         flex: 2,child:     Badge(
      position: BadgePosition.topEnd(top: 0, end: 3),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      showBadge: !message,
      badgeContent: Text(
       "3",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
      child: IconButton(icon:  Icon(Icons.message, color: message?Colors.white:Colors.black, size: 24), onPressed: () {
        setState(() {
          message=!message;
        });
      }),
    ),)
              ],
            ),
          );
  }
  buildAdminChatArea(){
    return Row(
     
      children: [
      Expanded(
        flex:3,
        child:  CircleAvatar(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      width: 30,
      height: 30,
      child: ClipOval(

        child:Image.asset('icons/flags/png/se.png',fit: BoxFit.fill, package: 'country_icons'),
    )
)


                        )),
      Expanded(
        flex: 13,
        child: Container(
      margin: EdgeInsets.only(top: 15),
        width: width*0.6,
        height: height*0.2,
    //    color: Colors.white,
        child: Wrap(
          runSpacing: 15,
          spacing: 15,
          children: buildListOfAdmin()),
    ))
    ],)   ;
  }
  buildListOfAdmin(){
    return  admin.map((e) =>  Column(
      children: [
        buildUserAvatar(e),
    Text(e["name"],style: TextStyle(color: Colors.white, fontSize: 10),),
    Text(e["role"],style: TextStyle(color: Colors.white, fontSize: 10),)
      ],
    ) ).toList();
  }

  buildUserAvator(){
    return 
     Badge(
      position: BadgePosition.topEnd(top: -15, end: -15),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeColor: Colors.transparent,
      badgeContent:
      
      Icon(Icons.mic_off, color: Colors.red,),
      child:  CircleAvatar(
      backgroundColor: Color.fromARGB(255, 166, 166, 166),
child: Icon(Icons.person, color: Colors.black,size: 40,),
    ),
    );
  
  }
  buildCustomeExpandable(){
    return !message ?  Column(children: [
      GestureDetector(
      
      onTap: (){
        print(message);
        setState(() {
          message= true;
        });
      },
      child: Container(
   
  decoration: BoxDecoration(
    color:Colors.green
  ),
  width: width*0.98,
  height: height*0.03,
  padding: EdgeInsets.only(left:5),
 
    child: Row(
  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
    children: [Row(children: [
      
      
     
      Badge(
         position: BadgePosition.topEnd(top: -7, end: -12
      ),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
       "3",
        style: TextStyle(color: Colors.white, fontSize: 8),
      ),
      child: Icon(Icons.waving_hand_sharp,size:20)
    ),
    SizedBox(width:12,)
      ,Icon(Icons.hearing),Text("233")],),Icon(Icons.keyboard_arrow_up),],
  ),
)),buildUsesChatArea() ],):Column(
  children: [
    GestureDetector(
  
    onTap: () => setState(() {
          print(message);
      message = false;
    }),
    child: Container(
 
  decoration: BoxDecoration(
    color:Colors.green
  ),
  width: width*0.98,
   height: height*0.03,
  padding: EdgeInsets.only(left:5),
 
    child: Row(
  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
    children: [Row(children: [
      
      
     
            Badge(
      position: BadgePosition.topEnd(top: -7, end: -12
      ),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: Text(
       "3",
        style: TextStyle(color: Colors.white, fontSize: 8),
      ),
      child: Icon(Icons.waving_hand_sharp,size:20)
    ),
    SizedBox(width:8,)
      ,Icon(Icons.hearing),Text("233")],),Icon(Icons.keyboard_arrow_up),],
  ),)
),buildTextChatArea()
  ],
);
  }
  buildUsersExpandedWidget(){
   
    return       ExpandablePanel(
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
   height: height*0.05,
  decoration: BoxDecoration(
    color:Colors.green
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
 
    child: Row(
  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
    children: [Row(children: [Icon(Icons.mic),Icon(Icons.hearing),Text("233")],),Icon(Icons.keyboard_arrow_down),],
  )
), 
            buildUsesChatArea()
         
          ],
   ),


 // widget header when the widget is Collapsed
   expanded: Container(
 
  decoration: BoxDecoration(
    color:Colors.green
  ),
  width: width*0.98,
  margin: EdgeInsets.only(left:5),
  child:GestureDetector(
    onTap: () => setState(() {
      message = false;
    }),
    child: Row(
  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
    children: [Row(children: [Icon(Icons.mic),Icon(Icons.hearing),Text("233")],),Icon(Icons.keyboard_arrow_down),],
  ),)
), // header when the widget is Expanded
),
 collapsed: GestureDetector(
   onTap: () => print("see more"),
   child:   Container(
   child: Center(child: Text("More", style: TextStyle(color: Colors.blue),),),
 )
 ),// body when the widget is Collapsed, I didnt need anything here. 
 expanded: buildTextChatArea()// body when the widget is Expanded
 ) ;
  }
  buildTextChatArea(){
    setState(() {
      message= true;
    });
    return Container(
   child: Text("""ADMIN Monir Asqari: 19:44:33:  GUYS! Would it not be better to let the girls just do the work? 
Fredrik Svensson: 19:45:37: What the hell?? Why 
""" , style: TextStyle(color: Colors.white),),
 );
 
 }
buildUsesChatArea(){
   setState(() {
      message = false;
    });
  return Container(
      margin: EdgeInsets.only(top: 15),
        width: width*0.8,
    
    //    color: Colors.white,
        child: Wrap(
          runSpacing: 15,
          spacing: 15,
          children: buildListOfUsers()),
    )   ;
}

  buildListOfUsers(){
    return users.map((e) =>  Column(
      children: [
  buildUserAvatar(e),
    Text(e["name"],style: TextStyle(color: Colors.white, fontSize: 10),),
 
    
     Text(e["role"] ==null? "":e["role"],style: TextStyle(color: Colors.white, fontSize: 10),)
      ],
    ) ).toList();
  }
  buildBottomWidget(){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: width,
      height: height*0.054,
      color: Colors.green,
        child: Center(child: Container(
          width: width*0.34,
 height: height*0.034,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Text("Leave",style: TextStyle(color: Colors.white, fontSize: 20),),)),),
    );
  }
  buildUserAvatar(e){
    return 
            Stack(
            //alignment: Alignment.center,
            children: [
                    Container(
          width: width*0.1,
          color: Colors.black,
          height: height*0.05,),
               Positioned(
                 left: (e["role"]== "admin" || e["role"]== "Co-admin")? 3:7,
                 bottom: (e["role"]== "admin" || e["role"]== "Co-admin")? 4:7,
                 child: 
                 CircleAvatar(
    radius:  e["role"]== "admin"?20:e["role"]== "Co-admin"? 18:15,
    backgroundColor: Colors.green,
  child:  CircleAvatar(
        radius: 15,
      backgroundColor: Color.fromARGB(255, 166, 166, 166),
child: Icon(Icons.person, color: Colors.black,size: 25,),
    ),
                 )
                 ,),
 Positioned(
      left: 27,
      child:    
      e["status"]=="speaker"? 
      Icon(Icons.mic_off, color: (e["role"]== "admin" || e["role"]== "Co-admin")?     Colors.red:Colors.white,size: 20,):Container(),),
    Positioned(
      left: 27,
      top: 31,
      child:  Container(
        width: 9, height: 9,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(100),
        color: Colors.green),
      ),),
    Positioned(
      left: -10,
      top: 15,
      child: CircleAvatar(
    backgroundColor: Colors.transparent,
    child: SizedBox(
      width: 12,
      height: 12,
      child: ClipOval(

        child:Image.asset('icons/flags/png/se.png',fit: BoxFit.fill, package: 'country_icons'),
    )
)


                        ),),
    Positioned(
      left: 0,
      top: 0,
      child: Icon(Icons.waving_hand_sharp, color:(e["role"]== "admin" || e["role"]== "Co-admin")? Colors.white:Colors.red,size: 18,),),
    
            ]);
  }

} 