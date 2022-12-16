// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import '../accounts/users.dart';

List<Map<String, dynamic>> filteredUsers = [];

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _Search();
}

class _Search extends State<Search> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    setState(() {
      filteredUsers = [];
    });
  }

  void filter(value) {
    setState(() {
      filteredUsers = users
          .where(
              (e) => e['userName'].toLowerCase().contains(value.toLowerCase()) || e['usertag'].toLowerCase().contains(value.toLowerCase())  )
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
          child: filteredUsers.isNotEmpty
              ? ListView.builder(
                  itemCount: filteredUsers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.network(
                                  filteredUsers[index]['image'],
                                  height: 50,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    filteredUsers[index]['userName'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    filteredUsers[index]['usertag'],
                                    style: TextStyle(fontSize: 14),
                                  ),
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
