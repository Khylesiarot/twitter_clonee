import 'package:flutter/material.dart';


class Allnotif extends StatelessWidget{
  const Allnotif({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
         color: Colors.white,
    height: 60,
    alignment: Alignment.topRight,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
             
                  alignment: Alignment.topRight,
                  width: 50,
                  child: const SizedBox(
                    height: 35,
                    width: 35,
                    child: Image(image: NetworkImage('https://i.ibb.co/ydsmBQc/8369338.png'), fit: BoxFit.contain,),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network('https://i.ibb.co/L8nDYsj/il-fullxfull-2445258956-35fl.jpg'
                            ,
                            width: 40,
                            height: 40,
                            fit: BoxFit.contain,
                          )),

                          const Padding(
                            padding: EdgeInsets.symmetric(vertical:5.0),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical:2.0),
                              child: Text("DJ Hanz", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                            ),
                          ),
                          const Text("Nasayo na ang lahat, pati ang puso ko", style: TextStyle(fontSize: 14),textAlign: TextAlign.left,),
                    ],
                  ),
                ),
      
              ],

          ),
        ),
          Container(
              height: 1,
              color: Colors.grey.shade200,
            )
      ],
    ),
   );
  }




}