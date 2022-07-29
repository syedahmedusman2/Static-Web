import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  ProfileTile(
      {Key? key, this.left, this.subTitle, this.title, this.top, this.factor})
      : super(key: key);
  final left;
  final subTitle;
  final title;
  final top;
  final factor;
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: top,
      left: left,
      child: Container(
        padding: EdgeInsets.all(8.0 * factor),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 5.0 * factor),
                blurRadius: 5.0 * factor,
              )
            ]),
        child: Row(
          children: [
            CircleAvatar(
              radius: 12.0 * factor,
              backgroundColor: Colors.grey.shade800,
              child: Icon(
                Icons.home,
                size: 12.0 * factor,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 9.0 * factor),
                ),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 8.0 * factor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
