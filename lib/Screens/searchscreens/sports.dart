import 'package:flutter/material.dart';

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    
    double wd = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        NetworkImage('https://i.ibb.co/S6BR9F8/f22-section-bg-keyart-xl-jpg-adapt-1456w.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Sports",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          " • Live",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                    const Text(
                      "2022 FIFA World Cup",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               sBuild(const Color.fromARGB(255, 0, 34, 68), 'https://i.ibb.co/q9Y7413/OyMzwN.png', 'NE', 23, const Color.fromARGB(255, 135, 0, 39), 'https://i.ibb.co/yqcp3s0/as.png', "AC", 13, 'NFL'),
               sBuild(Color.fromARGB(255, 89, 95, 101), 'https://i.ibb.co/JBKyRCV/i-img-i-teamlogos-nba-500-bkn.png', 'BKN', 112, const Color.fromARGB(255, 0, 43, 92), 'https://i.ibb.co/M1FYzVm/A1590c9c034c0c8b4d12423e723b412c.png', "WAS", 100, 'NBA'),
               sBuild(Color.fromARGB(255, 152, 0, 46), 'https://i.ibb.co/khfHPfn/as.png', 'MIA', 87, Color.fromARGB(255, 1, 59, 124), 'https://i.ibb.co/WGzbM7N/logo-indiana-pacers-escudo-2048.png', "IND", 82, 'NBA'),
               sBuild(Color.fromARGB(255, 0, 40, 85), 'https://i.ibb.co/sQ2WQKv/i-img-i-teamlogos-ncaa-500-2405.png', 'MONM', 71, Color.fromARGB(255, 181, 83, 9), 'https://i.ibb.co/zFkn41C/8f4b12401e186b462c41ac3593d09226.png', "CUSE", 86, 'NCAA Mens Basketball'), 
              ],

            ),
          ),
          Container(
            
            height: .5,
            color: Colors.grey.shade300,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              built('Sports', '#ByeByeRonaldo', '1M' , context, wd),
              built('Sports', '#BombalabapRonaldo', '100M', context, wd),
              built('Sports', 'RIP PIRATE', '100k', context, wd),
              built('Sports', 'MILAN', '230K', context, wd),
              built('Sports', 'Troi', '4M', context, wd),
              built('Sports', '#troiStriker', '500K', context, wd),
              built('Sports', 'VARSTROI', '300M', context, wd),
            ],
          )
        ]),
      ),
    );
  }

  built(String trend, String txt, String tweets, BuildContext context , double wd) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,15,0,15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
           width: wd*.82,
            child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending in $trend',
            style:  TextStyle(
              fontSize: 14,
              color: Colors.blueGrey.shade800,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              txt,
              style: const TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "$tweets Tweets".toUpperCase(),
            style:  TextStyle(
              fontSize: 12,
              color: Colors.grey.shade700,
            ),
          )
        ],
      ),
          ),

          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              
    
              
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: IconButton(icon: const Icon(Icons.more_vert_rounded), onPressed: (){}, iconSize: 15, alignment: Alignment.topRight,),
              ),
            ),
          )
        ],
      )
    );
  }
}




sBuild(Color color1, String img1 ,String teamName1, int score1,Color color2, String img2 ,String teamName2, int score2,String topic){
  
  return  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 160,
                      height: 45,
                    
                      decoration:  BoxDecoration(
                        color: color1,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),

                        child: ListTile(leading: SizedBox( height: 25, width: 25, child: Image(image: NetworkImage(img1) , fit: BoxFit.contain,)),
                        title: Text(teamName1 , style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                        trailing: Text("$score1" , style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: score1 > score2 ? Colors.white : const Color.fromARGB(146, 255, 255, 255)),), 
                        horizontalTitleGap: 3,
                        contentPadding: const EdgeInsets.fromLTRB(5, 0, 6, 20),
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 45,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(
                        color: color2,
                        
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),

                      child: ListTile(leading: SizedBox( height: 25, width: 25, child: Image(image: NetworkImage(img2) , fit: BoxFit.contain,)),
                        title: Text(teamName2 , style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                        trailing: Text( "$score2" , style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,  color: score2 > score1 ? Colors.white : const Color.fromARGB(146, 255, 255, 255)),), 
                        horizontalTitleGap: 3,
                        contentPadding: const EdgeInsets.fromLTRB(5, 0, 6, 20),
                      ),



                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Final", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.blueGrey),),
                          Text( score1 > score2 ? " • $teamName1 won" : " • $teamName2 won", style: const TextStyle(fontSize: 12, color: Colors.blueGrey ),),
                        ],
                        
                      ),
                    ),
                    Text(topic, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),overflow: TextOverflow.ellipsis,),

 
                  ],
                ),
              );
}