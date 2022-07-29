import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage(
      {Key? key,
      required this.top,
      required this.left,
      required this.diameter,
      required this.image})
      : super(key: key);
  final top;
  final left;
  final diameter;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        child: ClipRRect(
          child: Image.network(image, fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(300),
        ),
      ),
    );
  }
}
