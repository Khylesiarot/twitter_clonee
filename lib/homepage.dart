

import 'package:flutter/material.dart';
import 'package:twitter_clonee/Screens/Widgets/drawerslide.dart';
import 'package:twitter_clonee/Screens/messages.dart';
import 'package:twitter_clonee/Screens/spaces.dart';
import 'package:twitter_clonee/accounts/useracc.dart';
import './post/tweets.dart';
import './botnav/botnavig.dart';
import 'Screens/homescreen.dart';
import 'Screens/notifications.dart';
import 'Screens/searchscreen.dart';


 final scaffoldKey = GlobalKey<ScaffoldState>();

 Useracc user = Useracc();

Tweets tweets = Tweets();




class HomePage extends StatefulWidget{
 static const routename = './homepage/';

  const HomePage({super.key});

  
  @override
  Homepage createState() => Homepage();


}




class Homepage extends State<HomePage> with TickerProviderStateMixin {
  String src = "https://cdn-icons-png.flaticon.com/512/733/733579.png";

 
 late TabController tabController;
 IconData? cm;
  


 @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    cm = Icons.add;
     tabController.addListener(_onTabChanged);
  }

    void _onTabChanged() {
    setState(() {
      if (tabController.index == 2) {
        cm = Icons.mic;
      } else if (tabController.index == 4) {
        cm = Icons.email_outlined;
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
          drawer: DrawerS(user),
      
     body: TabBarView (controller: tabController,children: [
         HomeScreen(tweets,user),
          const SearchScreen(),
          const Spacess(),
          const NotifScreen(),
          const Messages()
        
     ],),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        backgroundColor: Colors.blue,
        onPressed: () {
          
        },
        // isExtended: true,
        child: Icon(cm),
      ),
     bottomNavigationBar: botnav(context, tabController)
        );
        
    
  
    
    
  }
}