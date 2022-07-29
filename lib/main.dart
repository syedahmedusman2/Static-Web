import 'package:flutter/material.dart';
import 'package:staticweb/components/header.dart';
import 'package:staticweb/components/info.dart';
import 'dart:math';

import 'package:staticweb/components/profileImage.dart';
import 'package:staticweb/components/profile_tile.dart';
import 'package:staticweb/components/widgets.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column()),
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
    return Scaffold(body: LayoutBuilder(
      builder: ((context, constraints) {
        return SingleChildScrollView(
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
                            children: [greyPanel(), subsribeToNewsletter()],
                          )),
                      ourProjects(context)
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
                        Text("Why choose Real Builder",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 40,
                        ),
                        Wrap(
                          spacing: 40,
                          runAlignment: WrapAlignment.center,

                          runSpacing: 50,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InfoCard(
                                title: "Delievery on Time",
                                text: "Lorem Ipsum Diriem and bla bla bla",
                                icon: Icons.access_time),
                            InfoCard(
                              title: "Good Reputation",
                              text: "Lorem Ipsum Diriem and bla bla bla",
                              icon: Icons.pie_chart_outline_rounded,
                            ),
                            InfoCard(
                                title: "Easy Installment",
                                text: "Lorem Ipsum Diriem and bla bla bla",
                                icon: Icons.money),
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
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://www.alisaqlain.com/wp-content/uploads/2020/09/118730853_3028582763910472_575897864797854172_o.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    // child: Image.network(
                                    //   "https://www.alisaqlain.com/wp-content/uploads/2020/09/118730853_3028582763910472_575897864797854172_o.jpg",
                                    //   width: 650,
                                    // ),
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
                                      Text("The Place To Be",
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
                                        child: Text("Visit Now",
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
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    ));
  }
}
