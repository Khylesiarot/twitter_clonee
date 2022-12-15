import 'package:flutter/material.dart';
import 'package:twitter_clonee/Screens/Widgets/dropdown.dart';
import 'package:twitter_clonee/accounts/useracc.dart';

import '../../homepage.dart';

class DrawerS extends StatelessWidget{

  const DrawerS(Useracc user,{super.key});
  
  get index => 0;

  @override
  Widget build(BuildContext context  ) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
       
        children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(0.0),
             child: DrawerHeader(
            
              decoration: const BoxDecoration(
                
                border: Border(
                  bottom: BorderSide(color: Colors.white, width: .1,),
                  
                ),
                  color: Colors.white,
                  ),
              child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.network(
                        user.user[index].userThumb,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                ),
              ),

                Padding(
                    padding: const EdgeInsets.fromLTRB(3,10,0,0),
                    child: Text( user.user[index].userName,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                ),
                
                 Padding(
                    padding: const EdgeInsets.fromLTRB(3,2,0,0),
                    child: Text( user.user[index].userMName,
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                ),

                     Padding(
                       padding: const EdgeInsets.only(top: 8.0),
                       child: Row(
                    children: [
                         Padding(
                    padding: const EdgeInsets.fromLTRB(2,0,0,0),
                    child: Text( user.user[index].followings.toString(),
                            style: const TextStyle(fontSize: 14),
                        ),
                ),

                 const Padding(
                    padding: EdgeInsets.fromLTRB(2,0,0,0),
                    child: Text( "Following",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                ),

                    Padding(
                    padding: const EdgeInsets.fromLTRB(4,0,0,0),
                    child: Text( user.user[index].followers.toString(),
                            style: const TextStyle(fontSize: 14),
                        ),
                ),

                 const Padding(
                    padding: EdgeInsets.fromLTRB(2,0,0,0),
                    child: Text( "Followers",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                ),
                    ],
                       ),
                     )
                

                      ],
                    ),
                  ),

                  Container( width: 50,alignment: Alignment.topRight, 
                  child: SizedBox( height: 25 ,width: 25, child: Image(image: NetworkImage('https://i.ibb.co/xgfGWbh/8336330.png'), fit: BoxFit.cover,),))

              ],)
          ),
           ),

             const Expanded(child: 
             Drop()),

            const BottomAppBar(
              
              child: ListTile( leading: SizedBox( height: 25, child: Image(image: NetworkImage('https://i.ibb.co/9qDfNSX/3018301.png'), fit: BoxFit.cover, ),), 
              trailing: SizedBox( height: 25, child: Image(image: NetworkImage('https://i.ibb.co/cktdSt9/25213.png'), fit: BoxFit.cover, )), tileColor: Colors.transparent,),
              
            )
        
   



        



          
      
        ],
      ),
 

    );
  }
  


}