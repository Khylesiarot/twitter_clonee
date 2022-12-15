import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


Widget botnav(BuildContext context, TabController tabController) {
    

    return  ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: TabBar(
         
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromARGB(221, 29, 28, 28),
            
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.transparent,
              controller: tabController,
              
                     
                    
              tabs: const [
               Tab(icon: Icon(FontAwesomeIcons.house, size: 25)),
            Tab(
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,

              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.microphone,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.bell,
                size: 25,
              ),
            ),
              Tab(
              icon: Icon(
                FontAwesomeIcons.envelope,
                size: 25,
              ),
            ),
              ],
              ),

            
      );}
      
      