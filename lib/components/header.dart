import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade900,
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Icon(
            Icons.favorite_outline_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Freelacer',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderNav(text: "Home", isSelected: true),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              HeaderNav(text: "About", isSelected: true),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              HeaderNav(text: "Careers", isSelected: true),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  const HeaderNav({Key? key, required this.text, required this.isSelected})
      : super(key: key);
  final String text;
  final bool isSelected;
  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
        widget.isSelected
            ? Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(radius: 2, backgroundColor: Colors.white),
                ],
              )
            : Container()
      ],
    );
  }
}
