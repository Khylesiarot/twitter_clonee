


  import 'package:flutter/material.dart';


  class Drop extends StatefulWidget{
  const Drop({super.key});
  
  @override
 State<Drop> createState()=> Dropwdown();


  }
  
  class Dropwdown extends State<Drop>{


bool flagCS = false;
bool flagPT = false;
bool flagSS = false;


  @override
  Widget build(BuildContext context) {
    return  ListView(
      
           
              
              
            
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: Column(
                      children: const [
                    ListTile(
                      horizontalTitleGap: -1,
                    leading: SizedBox( height: 20, child: Image(image: NetworkImage('https://i.ibb.co/232rYxW/456283.png'), fit: BoxFit.cover, ),),
                    title: Text('Profile', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                    //onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                    horizontalTitleGap: -1,
                    leading: SizedBox( height: 20, child: Image(image: NetworkImage('https://i.ibb.co/CVBZ7Fn/1077049.png'), fit: BoxFit.cover, ),),
                    title: Text('Topic',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                    //onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                     horizontalTitleGap: -1,
                    leading: SizedBox( height: 20, child: Image(image: NetworkImage('https://i.ibb.co/bvLjK6m/3031121.png'), fit: BoxFit.cover, ),),
                    title: Text('Bookmarks', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                    //onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                    horizontalTitleGap: -1,
                    leading: SizedBox( height: 20, child: Image(image: NetworkImage('https://i.ibb.co/SVtKqYx/2040523.png'), fit: BoxFit.cover, ),),
                    title: Text('Lists', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                    //onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
                    horizontalTitleGap: -1,
                    leading: SizedBox( height: 25, child: Image(image: NetworkImage('https://i.ibb.co/dBD5R6N/304208.png'), fit: BoxFit.cover, ),),
                    title: Text('Twitter Circle', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                    //onTap: () => {Navigator.of(context).pop()},
                    ),
                    SizedBox(height: 20,)
                      ],
                    ),
               ),



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
            child: Column(
              children: [
                     Column(
            children:  [
              ListTile(
                trailing: IconButton(onPressed:() {
                    setState(() {

                     
                     flagCS  ? flagCS = false :flagCS = true;
                    });
                } , icon: flagCS ? const Icon(Icons.keyboard_arrow_up_rounded , color: Colors.blue,):const Icon(Icons.keyboard_arrow_down_rounded)   ),
               title: const Text('Creator Studios', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
                      //onTap: () => {Navigator.of(context).pop()},
                    ),

                    flagCS ?  const ListTile(
               horizontalTitleGap: -1,
                      leading: SizedBox( height: 15, child: Image(image: NetworkImage('https://i.ibb.co/f24m3wh/615430.png'), fit: BoxFit.cover, ),),
               title: Text('Moments', style: TextStyle(fontSize: 15, color: Colors.black)),
                      //onTap: () => {Navigator.of(context).pop()},
                    ): const SizedBox(height: 0,)



            ],
          ),
           Column(
            children:  [
              ListTile(
                trailing: IconButton(onPressed:() {
                    setState(() {

                     
                     flagPT  ? flagPT = false :flagPT = true;
                    });
                } , icon: flagPT ? const Icon(Icons.keyboard_arrow_up_rounded , color: Colors.blue,):const Icon(Icons.keyboard_arrow_down_rounded)   ),
               title: const Text('Professional Tools', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
                      //onTap: () => {Navigator.of(context).pop()},
                    ),

                    flagPT ?   Column(
                      children: const [
                          ListTile(
               horizontalTitleGap: -1,
                      leading: SizedBox( height: 15, child: Image(image: NetworkImage('https://i.ibb.co/dpSGSxQ/2285485.png'), fit: BoxFit.cover, ),),
               title: Text('Twitter for Professionals', style: TextStyle(fontSize: 15, color: Colors.black)),
                      //onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
               horizontalTitleGap: -1,
                      leading: SizedBox( height: 15, child: Image(image: NetworkImage('https://i.ibb.co/xqZfgFS/925748.png'), fit: BoxFit.cover, ),),
               title: Text('Monetisation', style: TextStyle(fontSize: 15, color: Colors.black)),
                      //onTap: () => {Navigator.of(context).pop()},
                    )
                      ],
                    ): const SizedBox(height: 0,)



            ],
          ),
           Column(
            children:  [
              ListTile(
                trailing: IconButton(onPressed:() {
                    setState(() {

                     
                     flagSS  ? flagSS = false :flagSS = true;
                    });
                } , icon: flagSS ? const Icon(Icons.keyboard_arrow_up_rounded , color: Colors.blue,):const Icon(Icons.keyboard_arrow_down_rounded)  ),
               title: const Text('Settings & Support', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
                      //onTap: () => {Navigator.of(context).pop()},
                    ),

                    flagSS ?   Column(
                      children: const [
                          ListTile(
               horizontalTitleGap: -1,
                      leading: SizedBox( height: 15, child: Image(image: NetworkImage('https://i.ibb.co/72SR0NX/2099058.png'), fit: BoxFit.cover, ),),
               title: Text('Setting and privacy', style: TextStyle(fontSize: 15, color: Colors.black)),
                      //onTap: () => {Navigator.of(context).pop()},
                    ),
                    ListTile(
               horizontalTitleGap: -1,
                      leading: SizedBox( height: 15, child: Image(image: NetworkImage('https://i.ibb.co/jyfJN7w/471664.png'), fit: BoxFit.cover, ),),
               title: Text('Help Centre', style: TextStyle(fontSize: 15, color: Colors.black)),
                      //onTap: () => {Navigator.of(context).pop()},
                    )
                      ],
                    ): const SizedBox(height: 0,)



            ],
          ),




              ],
            ),
          ),
                  )

            ],
          
        

    );
  }


  }









  