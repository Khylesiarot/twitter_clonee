import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});
  
  

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
            built('Earth', 'Happy Birthday Troi', '1M' , context, wd),
              built('Technology', 'Python', '100M', context, wd),
              built('USJR', 'Coach Troi', '100k', context, wd),
              built('Busness and finance', 'Binance', '230K', context, wd),
              built('Busness and finance', 'BUSD', '220K', context, wd),
              built('Busness and finance', 'KUCOIN', '130K', context, wd),
              built('Busness and finance', 'SAFU', '30K', context, wd),
              built('United States', 'Top Junding', '4M', context, wd),
              built('Entertainment', '#Humol', '500K', context, wd),
              built('Pop', 'Koreano Troi', '300M', context, wd),
        ]),
      ),
    );
  }}


 built(String trend, String txt, String tweets, BuildContext context ,double wd) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,15,0,15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: wd * .82 ,
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
            child: Expanded(
              
    
              
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: (){}, iconSize: 15, alignment: Alignment.topRight,),
              ),
            ),
          )
        ],
      )
    );
  }
