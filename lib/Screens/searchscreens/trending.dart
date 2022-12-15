import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

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
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                child: Text(
                  "Trends",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ads(),
              built('1', '#TroiTheNewCapt.A', '1M', context, wd),
              built('2', 'Koreano Troi', '501K', context, wd),
              built('3', 'BTS RENEIR', '500K', context, wd),
              built('4', '#JUNDINGTHECATLOVER', '400.1K', context, wd),
              built('5', 'TIMMY <3 JAM', '399.9K', context, wd),
              built('6', '#JAMMY Troi', '200K', context, wd),
              built('7', 'TIMAICAH', '100K', context, wd),
              built('8', 'ESCARIO WITH LOVE', '90K', context, wd),
              built('9', 'SIOMAI NI KI', '89K', context, wd),
              built('10', 'DJ TROI', '50K', context, wd),
              built('11', 'BOMBALABAP', '40.15K', context, wd),
              built('12', 'HUMOL', '20K', context, wd),
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
             width: wd* .82,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$trend. Trending',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      txt,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "$tweets Tweets".toUpperCase(),
                    style: TextStyle(
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
                  child: IconButton(
                    icon: Icon(Icons.more_vert_rounded),
                    onPressed: () {},
                    iconSize: 15,
                    alignment: Alignment.topRight,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

ads() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '#LollipoppinHoliday',
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const Text(
          'Biggest discounts up to 50% off Chupa Chups during Shopee Live',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: SizedBox(
                height: 15,
                child: Image(
                    image: NetworkImage('https://i.ibb.co/jkRWdNR/3307946.png')),
              ),
            ),
            Text(
              'Promoted by Chupa Chups PH',
              style: TextStyle(fontSize: 15, color: Colors.blueGrey),
            )
          ],
        )
      ],
    ),
  );
}
