import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:twitter_clonee/post/tweets.dart';

import '../homepage.dart';

class BuildTweets extends StatefulWidget {
  

   BuildTweets( this.tweets,this.index, this.remove,this.lvcount,this.retweetcnt,{super.key});
  
  Tweets tweets;
  int index;
  int lvcount;
  int retweetcnt;
  Function remove;
  
  @override
  State<BuildTweets> createState() => BuildT();

  
}

class BuildT extends State<BuildTweets> {

  BuildT();
  
  get index => widget.index;
   Color clr1  = Colors.grey.shade400;
      Color clr2 = Colors.grey.shade400;

      dynamic icn = FontAwesomeIcons.heart;
   
      
  @override
  Widget build(
    BuildContext context) 
    {

     
  topicicon() {
    return Container(
        color: Colors.white,
        width: 30,
        alignment: Alignment.centerRight,
        child: const Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 0, 5),
            child: Icon(
              Icons.comment_rounded,
              size: 12,
            )));
  }

  topic() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Text(
        widget.tweets.tweets[index].topic,
        style: const TextStyle(
          fontSize: 14.0,
          color: Color.fromARGB(255, 46, 45, 45),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  String txt = " • ${tweets.tweets[index].timeT} ";

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: [
            tweets.tweets[index].topic != ''
                ? topicicon()
                : const SizedBox(height: 0.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(1.5, 5, 0, 0),
              child: SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(
                    tweets.tweets[index].userThumb,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                tweets.tweets[index].topic != ''
                    ? topic()
                    : const SizedBox(
                        height: 0,
                      ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tweets.tweets[index].userName,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        tweets.tweets[index].userMName,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        txt,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                tweets.tweets[index].tweetText != ''
                    ? Text(
                        tweets.tweets[index].tweetText,
                        style: const TextStyle(fontSize: 16.0),
                      )
                    : const SizedBox(height: 0),
                tweets.tweets[index].tweetImage != ''
                    ? Material(
                        borderRadius: BorderRadius.circular(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            tweets.tweets[index].tweetImage,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      )
                    : const SizedBox(height: 0.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 0.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            const FaIcon(
                              FontAwesomeIcons.comment,
                              size: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                  tweets.tweets[index].commentCount.toString()),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              child:  FaIcon(
                                FontAwesomeIcons.retweet,
                                size: 20,
                                color: clr1,
                              ),
                              onTap: (){
                                setState(() {
                                 
                                   widget.lvcount = widget.lvcount + 1;
                                  clr1 = Colors.green;
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                 widget.lvcount.toString()),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                             GestureDetector(
                               child: FaIcon(
                                icn,
                                size: 20,
                                color: clr2,
                            ),
                            onTap: (){
                              setState(() {
                                widget.retweetcnt =widget.retweetcnt + 1;
                                icn = FontAwesomeIcons.solidHeart;
                                clr2 = Colors.red;
                               
                              });
                            },
                             ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(
                                  widget.retweetcnt.toString()),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tweets.tweets[index].topic != ''
                ? GestureDetector(
                    child: const Icon(Icons.close, size: 14),
                    onTap: () => {widget.remove(index)},
                  )
                : const SizedBox(
                    height: 0,
                  ),
            tweets.tweets[index].topic != ''
                ? const Padding(
                    padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                    child: Icon(Icons.more_vert_rounded, size: 15),
                  )
                : const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Icon(Icons.more_vert, size: 15),
                  )
          ],
        )
      ],
    ),
  );
}

  
}