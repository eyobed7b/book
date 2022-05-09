
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
 class BookCircles extends StatefulWidget {
  BookCircles({Key? key}) : super(key: key);

  @override
  State<BookCircles> createState() => _BookCirclesState();
}

class _BookCirclesState extends State<BookCircles> {
  @override
  Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
    return Container(
      child:ListView(
        children: <Widget>[
       
             Container(
           padding: EdgeInsets.only( left: 5 ),
           child:   Text("Search by: Author ,Title or ISBN"),
         ),
         Container(
           width: width*0.2,
           padding: EdgeInsets.only(top:10,bottom: 10, left: 20, right: 20),
           child: CupertinoSearchTextField(
          onChanged: (value){},
          onSubmitted: (value){},
          placeholder: "Ryan Daniel Moran",
          itemSize: 30,
          itemColor: CupertinoColors.black,
          prefixIcon: Icon(CupertinoIcons.camera),
          suffixIcon:  Icon(CupertinoIcons.search),
           suffixMode: OverlayVisibilityMode.notEditing,
        ),
         ),
        //  Container(
        //    padding: EdgeInsets.only( left: 5 ),
        //    child:Text("Live boook circles")
        //  ),
         ExpansionTile(
  title: Text(
    "Live book circles",
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
  ),
  children: <Widget>[
  

Container(
    height:height *0.15 ,
  color:Colors.green,
  child:Row(
   mainAxisAlignment: MainAxisAlignment.spaceAround,
  children:<Widget>[
    SizedBox(
      width:15
    ),
    Expanded(
      flex:2,
      child:Container(
          
     width: width*0.1 ,
              height:height *0.13 ,
      color:Colors.green[800]
   ),
    ),
    Expanded(
      flex:8,
      child:Container(
        padding: EdgeInsets.only(top:5,left:15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        Container(
          padding: EdgeInsets.only(top:5 ),
          child:Text("Ryan Daniel Moran",style:TextStyle( fontSize: 12, ))
         
        ),
        Container(
           padding: EdgeInsets.only(top:5,),
          child:Text("12 MONTHS TO \§1 MILLION",style:TextStyle( fontSize: 12, ))
        ),
        Container(
           padding: EdgeInsets.only(top:5   ),
          child:Text(""" How to pick a winning product, 
Build a real business and become a 
seven-figure entrepreneur """,style:TextStyle( fontSize: 12, ))
        )
      ]
   )
  ),
    ),
   Expanded(
     flex:3,
     child:
  Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        Container(
          padding: EdgeInsets.only(top:5,),
          child: Row(
            children:<Widget>[
            Icon(Icons.person,color:Colors.white,size :13),
            Text("7", style:TextStyle( fontSize: 10, color:Colors.white)),
            SizedBox(
              width:10
            ),
            Icon(Icons.wifi,color:Colors.white, size :13),
            Text("240", style:TextStyle( fontSize: 10, color:Colors.white))
            ]
          )
         
        ),
        Container(
           padding: EdgeInsets.only(top:5,),
          child:Text("Session 1 of 5",style:TextStyle( fontSize: 10, color:Colors.white))
        ),
        Container(
           padding: EdgeInsets.only(top:5   ),
          child:Text(" 12:00 13:00",style:TextStyle( fontSize: 12, color:Colors.white ))
        ),
          Container(
          padding: EdgeInsets.only(top:5,),
          child: Row(
            children:<Widget>[
            Icon(Icons.message,color:Colors.white,size :15),
            
            SizedBox(
              width:5
            ),
            
           Column(
             children:[
                Icon(Icons.person,color:Colors.white, size :15),
                Text("Admin" , style:TextStyle( fontSize: 8, color:Colors.white))
             ]
           )
           
            ]
          )
         
        ),
      ]
   )
  ),
   )
  
  ]
)
)


    
      
  ],
),
        ]
      )
    );
  }
} 
   
