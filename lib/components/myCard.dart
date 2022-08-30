import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final Widget myInfo;
  final Color myColor;

  const MyCard({ Key? key, required this.myInfo, required this.myColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: myColor,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: myInfo
    );
  }
}