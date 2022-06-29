// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, missing_required_param

import 'package:flutter/material.dart';
import 'package:mantelhealth_app/emoji/emoji.dart';
import 'package:mantelhealth_app/exercisestile/exercisesTile.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
          )
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Fadwa!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "29 June,2022",
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(Icons.notifications, color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          emoji(emoji_icon: "😫"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          emoji(emoji_icon: "😐"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          emoji(emoji_icon: "😄"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          emoji(emoji_icon: "🥳"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              padding: EdgeInsets.all(25),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Exercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: ListView(
                      children: [
                        exercisesTile(
                            icon: Icons.favorite,
                            exercisesName: "Speaking Skills",
                            numberOfExercises: "15",
                            color: Colors.orange),
                        exercisesTile(
                            icon: Icons.person,
                            exercisesName: "Reading Skills",
                            numberOfExercises: "8",
                            color: Colors.green),
                        exercisesTile(
                          icon: Icons.star,
                          exercisesName: "Writing Skills",
                          numberOfExercises: "20",
                          color: Colors.pink,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
