import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, this.text, this.title, this.icon})
      : super(key: key);
  final title;
  final text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 22,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 15),
        Container(
          width: 200,
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(height: 15),
        Text(text,
            style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w800)),
        Container(
          height: 1.5,
          width: 90,
          color: Colors.black87,
        )
      ],
    );
  }
}
