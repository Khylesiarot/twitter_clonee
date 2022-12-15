// ignore_for_file: prefer_const_constructors, deprecated_member_use


import 'package:flutter/material.dart';
import 'package:twitter_clone/Screens/notificationscreens/allscreen.dart';
import 'package:twitter_clone/Screens/notificationscreens/mention.dart';
import 'package:twitter_clone/Screens/notificationscreens/verified.dart';
import 'package:twitter_clone/homepage.dart';
  

class NotifScreen extends StatefulWidget{
  const NotifScreen({super.key});

  @override
  State<NotifScreen> createState() => Notif();
  
  }





class Notif extends State<NotifScreen> with TickerProviderStateMixin{

 late TabController tabControllerS;
   final scaffoldKeya = GlobalKey<ScaffoldState>();
   TextEditingController txtcntrl = TextEditingController();
  


 @override
  void initState() {
    super.initState();
    tabControllerS = TabController(initialIndex: 0, length: 3, vsync: this);
  
  }
  
 

  @override
  Widget build(BuildContext context) {
     double wd = MediaQuery.of(context).size.width;
      
    return Scaffold(
      key: scaffoldKeya,
      appBar:  AppBar(
        elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          
          titleSpacing: 10,
          
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
          title: Container(
            alignment: Alignment.centerLeft,
            child:  Text('Notifications', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,  ),textAlign: TextAlign.left,),
          ),
  	        

          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: SizedBox(
                width: 25,
                height: 25,
                child: Image(image: NetworkImage('https://i.ibb.co/yVG8kxc/70314.png'), fit: BoxFit.contain,),
              ),
            )
          ],

          bottom: TabBar(
            

              labelStyle: TextStyle( fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade700,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.blue,
              controller: tabControllerS,
              indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0),
                borderSide:
                    BorderSide(color: Colors.blue, width: 3)),
                    
                 tabs: 
                  [
                   Container(
                    alignment: Alignment.center,
                    width: wd * .20,
                    child: Text('All'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: wd * .20,
                    child: Text('Verified'),
                  ),
                   Container(
                    alignment: Alignment.center,
                    width: wd * .20,
                    child: Text('Mentions'),
                  ),
                    
                 ],
        )),


        body: TabBarView(controller: tabControllerS,  children: const [
          Allnotif(),
          Vernotif(),
          Mentnot()
        ]),
      
    );
    
  }

  
}


