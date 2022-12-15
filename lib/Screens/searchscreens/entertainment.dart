import 'package:flutter/material.dart';

class ENt extends StatelessWidget {
  const ENt({super.key});

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
                        NetworkImage('https://i.ibb.co/j3KzPrP/258541-1-1.jpg'),
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
                          "Television",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          " • This morning",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                    const Text(
                      "Chicago Fire airing on NBC",
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
          Container(
            
            height: .5,
            color: Colors.grey.shade300,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              built('Earth', 'Happy Birthday Troi', '1M' , context, wd),
              built('Music', '#Bombalabap', '100M', context, wd),
              built('Entertainment', 'Coach Troi', '100k', context, wd),
              built('', '#DJCAHILOG', '230K', context, wd),
              built('Korean Music', 'Park Mall', '4M', context, wd),
              built('Music', 'Humol', '500K', context, wd),
              built('Music', 'J COLE', '300M', context, wd),
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
                child: IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: (){}, iconSize: 15, alignment: Alignment.topRight,),
              ),
            ),
          )
        ],
      )
    );
  }
}
