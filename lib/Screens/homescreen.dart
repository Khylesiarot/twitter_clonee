import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../accounts/useracc.dart';
import '../homepage.dart';
import '../post/posttemp.dart';
import '../post/tweets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(Tweets tweets,Useracc user, {super.key});

  int? get index => null;

  @override
  // ignore: no_logic_in_create_state
  Homescreen createState() => Homescreen(tweets,user);
}

int? value;

class Homescreen extends State<HomeScreen> {
  Homescreen(Tweets tweets ,Useracc user);

  remove (int value){
    setState(() {
      tweets.tweets.removeAt(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
         backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading:  MaterialButton(
            
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
          title: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.blue,
          ),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: const FaIcon(FontAwesomeIcons.bolt),
              iconSize: 20,
              color: Colors.black,
            )
          ],
        ),
       
         
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return buildTweets(context, tweets, index,remove);
              },
              separatorBuilder: (context, index) {
                return  Container(
                  height: 1,
                  color: Colors.grey.shade200,
                );
              },
              itemCount: tweets.tweets.length),
        ));
  }
}
