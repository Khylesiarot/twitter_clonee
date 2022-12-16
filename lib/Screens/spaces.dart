import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clonee/homepage.dart';

class Spacess extends StatelessWidget {
  const Spacess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        titleSpacing: 10,
        leading: MaterialButton(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Image.network(
                user.user[0].userThumb,
                width: 35,
                height: 35,
                fit: BoxFit.cover,
              )),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),
        title: Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            'Twitter',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: FaIcon(
                              FontAwesomeIcons.magnifyingGlass,
                              size: 18,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Text(
                            'Seach for a Space',
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey.shade700),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Happening Now",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          wordSpacing: 1.5),
                    ),
                    Text(
                      "Spaces goin on right now",
                      style:
                          TextStyle(fontSize: 14, color: Colors.grey.shade400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 18, 133, 175),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ListTile(
                            leading: Icon(
                              Icons.live_tv_rounded,
                              size: 16,
                              color: Colors.white,
                            ),
                            title: Text(
                              "Live",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            trailing: Icon(Icons.more_vert_rounded,
                                size: 20, color: Colors.white),
                            horizontalTitleGap: -10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 10, 10),
                            child: Text(
                              "Hacker Man Reneir. FTX & Binance. Naunsa Naman Ni??? - The Cat Lover",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 1,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 5, 0, 20),
                            child: Text(
                              "Cryptocurrencies",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                wordSpacing: 1,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 15, 110, 144),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 10, 0, 10),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(45.0),
                                    child: Image.network(
                                      user.user[0].userThumb,
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.cover,
                                    )),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    "Renier Panares",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 35,
                                  height: 16,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          89, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: const Text(
                                    "Host",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 15, 15),
                            child: SizedBox(
                              child: Text(
                                "If I had to live my life without you near my me The days would all be emptyThe nights would seem so long With you I see forever, oh, so clearly I might have been in love before But it never felt this strong",
                                style: TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 13),
                                maxLines: 2,
                                softWrap: false,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 82, 58, 40),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ListTile(
                            leading: Icon(
                              Icons.live_tv_rounded,
                              size: 16,
                              color: Colors.white,
                            ),
                            title: Text(
                              "Live",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            trailing: Icon(Icons.more_vert_rounded,
                                size: 20, color: Colors.white),
                            horizontalTitleGap: -10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 10, 10),
                            child: Text(
                              "COVID Twiiter File Drops and The Truth: Plain Folk/Plain Talk",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 1,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 5, 0, 20),
                            child: Text(
                              "Covidobidapdap",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                wordSpacing: 1,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 67, 47, 32),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 10, 0, 10),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(45.0),
                                    child: Image.network(
                                      'https://i.ibb.co/4SMHHVj/create-cartoon-profile-pictures.jpg',
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.cover,
                                    )),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    "Julius Panares",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 35,
                                  height: 16,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          89, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: const Text(
                                    "Host",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 15, 15),
                            child: SizedBox(
                              child: Text(
                                "Nothing's gonna change my love for you You oughta know by now how much I love you One thing you can be sure of I'll never ask for more than your love",
                                style: TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 13),
                                maxLines: 2,
                                softWrap: false,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 66, 151, 60),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ListTile(
                            leading: Icon(
                              Icons.live_tv_rounded,
                              size: 16,
                              color: Colors.white,
                            ),
                            title: Text(
                              "Live",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            trailing: Icon(Icons.more_vert_rounded,
                                size: 20, color: Colors.white),
                            horizontalTitleGap: -10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 10, 10),
                            child: Text(
                              "The willing, Destiny guides them. The unwilling, Destiny drags them.",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                wordSpacing: 1,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 5, 0, 20),
                            child: Text(
                              "Sadboi Moments",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                wordSpacing: 1,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 56, 129, 51),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 10, 0, 10),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(45.0),
                                    child: Image.network(
                                      'https://i.ibb.co/pRvK5Sj/OIP.jpg',
                                      width: 15,
                                      height: 15,
                                      fit: BoxFit.cover,
                                    )),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    "Carl Pintoy",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 35,
                                  height: 16,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          89, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: const Text(
                                    "Host",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 15, 15),
                            child: SizedBox(
                              child: Text(
                                "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.",
                                style: TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 13),
                                maxLines: 2,
                                softWrap: false,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
