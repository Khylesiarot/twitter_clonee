// ignore_for_file: prefer_const_constructors, deprecated_member_use


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clonee/Screens/searchacc.dart';
import 'package:twitter_clonee/Screens/searchscreens/entertainment.dart';
import 'package:twitter_clone/Screens/searchscreens/foryou.dart';
import 'package:twitter_clone/Screens/searchscreens/news.dart';
import 'package:twitter_clone/Screens/searchscreens/sports.dart';
import 'package:twitter_clone/Screens/searchscreens/trending.dart';
import 'package:twitter_clonee/homepage.dart';

import '../searchscreens/foryou.dart';
import '../searchscreens/news.dart';
import '../searchscreens/trending.dart';
  

class SearchScreen extends StatefulWidget{
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreen();
  
  }





class _SearchScreen extends State<SearchScreen> with TickerProviderStateMixin{

 late TabController tabControllerS;
   final scaffoldKeya = GlobalKey<ScaffoldState>();
   TextEditingController txtcntrl = TextEditingController();
  


 @override
  void initState() {
    super.initState();
    tabControllerS = TabController(initialIndex: 0, length: 5, vsync: this);
  
  }
  



  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      key: scaffoldKeya,
      appBar:  AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: MaterialButton(
            
             child: ClipRRect(
                  borderRadius: BorderRadius.circular(45.0),
                  child: Image.network(
                    user.user[0].userThumb,
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                  )),
             onPressed: (){  if(scaffoldKey.currentState!.isDrawerOpen){
                       scaffoldKey.currentState!.closeDrawer();
                       //close drawer, if drawer is open
                  }else{
                       scaffoldKey.currentState!.openDrawer();
                       //open drawer, if drawer is closed
                  }},
           ),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: GestureDetector(
              child: Container(
                width: 250,
                height: 30,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                         color: Colors.grey.shade200,
                         border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1),
                         
                      ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,6,0,0),
                  child: Text('Seach Something', style: TextStyle( fontSize: 14, color: Colors.grey.shade600), textAlign: TextAlign.left,),
                ),
              
                    ),
                    onTap: () {
                        Navigator.of(context).push(
                       MaterialPageRoute(builder: (context) => Search()));
                      
                    }
            ),
          ),


          actions: [
            IconButton( 
              onPressed: () => {},
              icon: const FaIcon(FontAwesomeIcons.cog),
              iconSize: 20,
              color: Colors.black,
            )
          ],

          bottom: TabBar(
              labelStyle: TextStyle( fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade700,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.blue,
              controller: tabControllerS,
              indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0),
                borderSide:
                    BorderSide(color: Colors.blue, width: 3)),
                 tabs: 
                 [
                  Tab(text: 'For You',),
                   Tab(text: 'Trending',),
                    Tab(text: 'News',),
                     Tab(text: 'Sports',),
                      Tab(text: 'Entertainment',),
                 ],
        )),
      body: TabBarView(controller: tabControllerS, children: [
            Foryou(),
            Trending(),
             News(),
              Sports(),
               ENt(),
      ],),
    );
    
  }

  
}


OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Colors.grey.shade300,
          width: .1,
        )
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
      
      borderSide: BorderSide(
         color:Colors.grey.shade300,
          width: .1,
        )
    );
  }