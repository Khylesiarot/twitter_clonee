// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import '../accounts/users.dart';

List<Map<String, dynamic>> filterw= [];

class SearchM extends StatefulWidget {
  const SearchM({super.key});

  @override
  State<SearchM> createState() => _Search();
}

class _Search extends State<SearchM> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    setState(() {
      filterw = [];
    });
  }

  void filter(value) {
    setState(() {
      filterw = users
          .where(
              (e) => e['userName'].toLowerCase().contains(value.toLowerCase()) || e['usertag'].toLowerCase().contains(value.toLowerCase()) || e['Message'].toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        titleSpacing: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SizedBox(
            width: 200,
            height: 25,
            child: TextField(
              onChanged: (value) {
                filter(value);
              },
              decoration: InputDecoration(
                filled: false,
                hintText: 'Search Twitter',
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: filterw.isNotEmpty
              ? ListView.builder( itemCount: filterw.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Row(
                            children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(
                        filterw[index]['image'],
                        height: 50,
                        fit: BoxFit.fill,
                    ),
                  ),
                ),
                                  ),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children: [
                            Text(
                          filterw[index]['userName'] + ' ', style: const TextStyle( fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          filterw[index]['usertag'],  style: const TextStyle( fontSize: 16),
                      ),
                      Text(
                      " • " + filterw[index]['Notif'] ,  style: const TextStyle( fontSize: 16 , overflow: TextOverflow.ellipsis), maxLines: 1,
                      )
                          ],
                      ),
                      Text(filterw[index]['Message'])
                    ],
                  ),
                )
                            ],
                          ),
                        ),
                      );

                    })
              : Container(
                  color: Colors.grey.shade300,
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Try searching people,topic or keywords",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
