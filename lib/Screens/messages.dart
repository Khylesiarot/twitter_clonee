import 'package:flutter/material.dart';
import 'package:twitter_clonee/Screens/searchM.dart';
import 'package:twitter_clonee/accounts/users.dart';

import '../homepage.dart';

class Messages extends StatelessWidget{
  const Messages({super.key});
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(
      elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: MaterialButton(
            
             child: ClipRRect(
                  borderRadius: BorderRadius.circular(45.0),
                  child: Image.network(
                    user.user[0].userThumb,
                    width: 40,
                    height: 40,
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
                       MaterialPageRoute(builder: (context) => SearchM()));
                      
                    }
            ),
          ),


          actions: const [
             Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: SizedBox(
                width: 25,
                height: 25,
                child: Image(
                  image: NetworkImage('https://i.ibb.co/yVG8kxc/70314.png'),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],

          ),



          body: Container(
            color: Colors.white,
            child: ListView.builder( itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Row(
                            children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(
                        users[index]['image'],
                        height: 50,
                        fit: BoxFit.fill,
                    ),
                  ),
                ),
                                  ),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children: [
                            Text(
                          users[index]['userName'] + ' ', style: const TextStyle( fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          users[index]['usertag'],  style: const TextStyle( fontSize: 16),
                      ),
                      Text(
                      " • " + users[index]['Notif'] ,  style: const TextStyle( fontSize: 16 , overflow: TextOverflow.ellipsis), maxLines: 1,
                      )
                          ],
                      ),
                      Text(users[index]['Message'])
                    ],
                  ),
                )
                            ],
                          ),
                        ),
                      );

                    }),
          ),




  );
  }




  
}