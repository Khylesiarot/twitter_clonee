import 'package:flutter/material.dart';


class Mentnot extends StatelessWidget{
  const Mentnot({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
    color: Colors.white,
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20.0),
       child: Container(
             color: Colors.white,
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
             const Padding(
               padding: EdgeInsets.symmetric(vertical: 20.0),
               child: SizedBox(
                height: 150,
                width: 400,
                child: Image(image: NetworkImage('https://i.ibb.co/sVcjkQT/verification-check-400x200-v1-46c9cb39.png' ), fit: BoxFit.cover,),
            ),
             ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
              child: Text("Join the conversation", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, letterSpacing: 1.5), textAlign: TextAlign.left,),
            ),
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 15.0),
               child: Text("When someone on Twitter mentions you in a Tweet or reply, youll find it here.", style: TextStyle(fontSize: 16), textAlign: TextAlign.left,),
             ),
          ],
        ),
       ),
     ),
   );
  }




}