import 'package:flutter/material.dart';


class Vernotif extends StatelessWidget{
  const Vernotif({super.key});

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
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20.0),
               child: const SizedBox(
                height: 150,
                width: 400,
                child: Image(image: NetworkImage('https://i.ibb.co/sVcjkQT/verification-check-400x200-v1-46c9cb39.png' ), fit: BoxFit.cover,),
            ),
             ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
              child: Text("Nothing to see here - yet", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, letterSpacing: 1.5), textAlign: TextAlign.left,),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 5.0),
               child: const Text("Likes, mentions, Retweet and a whole lot more - when it comes from a verified account. youll find it here.", style: TextStyle(fontSize: 16), textAlign: TextAlign.left,),
             ),
          ],
        ),
       ),
     ),
   );
  }




}