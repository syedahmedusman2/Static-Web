import 'package:flutter/material.dart';
import 'package:staticweb/components/header.dart';
import 'package:staticweb/components/info.dart';
import 'dart:math';

import 'package:staticweb/components/profileImage.dart';
import 'package:staticweb/components/profile_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Get Full screen size
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 600,
                          width: MediaQuery.of(context).size.width * 0.45,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Transform(
                                transform: Matrix4.rotationZ(pi / 6)
                                  ..translate(-180, 170),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(300)),
                                  height: 350,
                                  width: 700,
                                ),
                              ),
                              Positioned(
                                  top: 200,
                                  left: 100,
                                  child: Container(
                                    height: 400,
                                    width: 400,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Manage All Your',
                                          style: TextStyle(
                                              fontSize: 38,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Projects in one plaxe',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 300,
                                          child: Text(
                                            "Describe your project in a few words. This will be used to generate a project summary and a project description. You can edit this later.",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Row(
                                          children: [
                                            Container(
                                              height: 45,
                                              width: 230,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  hintText:
                                                      "Enter Your Email Address",
                                                  hintStyle: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black87,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: Container(
                                                  height: 45,
                                                  width: 100,
                                                  child: Center(
                                                    child: Text(
                                                      "Get Invite",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ))
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          )),
                      Container(
                        height: 600,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                                top: 140,
                                left: 90,
                                diameter: 200,
                                image:
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJrURzysGidjCA4aOFFAsZW6e5Weami4AUvg&usqp=CAU"),
                            // ProfileImage(
                            //     top: 160,
                            //     left: 310,
                            //     diameter: 100,
                            //     image:
                            //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJrURzysGidjCA4aOFFAsZW6e5Weami4AUvg&usqp=CAU"),
                            // ProfileImage(
                            //     top: 275,
                            //     left: 280,
                            //     diameter: 280,
                            //     image:
                            //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJrURzysGidjCA4aOFFAsZW6e5Weami4AUvg&usqp=CAU"),
                            // ProfileImage(
                            //     top: 300,
                            //     left: 90,
                            //     diameter: 170,
                            //     image:
                            //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJrURzysGidjCA4aOFFAsZW6e5Weami4AUvg&usqp=CAU"),
                            ProfileTile(
                              top: 300,
                              left: 50,
                              title: "Lorem Ipsum Dorim",
                              subTitle: "Scarllet,Designer",
                              factor: 1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Header(),
                ],
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                        right: -100,
                        child: Container(
                          height: 330,
                          width: 430,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(300),
                          ),
                        )),
                    Column(
                      children: [
                        Text("How it works",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InfoCard(
                              title: "Create Project",
                              text: "Lorem Ipsum Diriem and bla bla bla",
                              icon: Icons.people_rounded,
                            ),
                            InfoCard(
                              title: "Overview Reports",
                              text: "Lorem Ipsum Diriem and bla bla bla",
                              icon: Icons.pie_chart_outline_rounded,
                            ),
                            InfoCard(
                              title: "Dashboard",
                              text: "Lorem Ipsum Diriem and bla bla bla",
                              icon: Icons.person_rounded,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                primary: Colors.black87,
                                padding: EdgeInsets.all(0)),
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text("Explore More",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white)),
                            )),
                        Container(
                          height: 500,
                          width: double.infinity,
                          color: Colors.white,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                  left: -250,
                                  child: Container(
                                    height: 450,
                                    width: 700,
                                    decoration: BoxDecoration(
                                      color: Colors.amber.shade400,
                                      borderRadius: BorderRadius.circular(400),
                                    ),
                                  )),
                              //
                              Positioned(
                                  left: 100,
                                  top: 20,
                                  child: Container(
                                    height: 400,
                                    width: 700,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    // child: Image.network(),
                                  )),
                              ProfileTile(
                                left: 80,
                                top: -10,
                                title: "Lorem Ipsum Dorim",
                                subTitle: "Scarllet,Designer",
                                factor: 1,
                              ),
                              ProfileTile(
                                left: 620,
                                top: 400,
                                title: "Lorem Ipsum Dorim",
                                subTitle: "Ahmed",
                                factor: 1,
                              ),
                              Positioned(
                                  right: 100,
                                  top: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Easy Project Managenment",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w800)),
                                      SizedBox(height: 15),
                                      Container(
                                        width: 200,
                                        child: Text(
                                          "Lorem Ipsum Diriem Loriem Ipsum Diriem Lorem Ipsum DIriem Lorem Ipsim",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("Try Now For Free",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white)),
                                        style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            backgroundColor: Colors.grey[900],
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 50, vertical: 20)),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1000,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
