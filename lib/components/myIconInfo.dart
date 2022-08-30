import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';

class MyIconInfo extends StatelessWidget {
  
  final String myNumber;
  final IconData myIcon;
  final String myTitle;
  final Color myTitleColor;
  final Color myIconColor;
  
  const MyIconInfo({ Key? key, required this.myNumber, required this.myIcon, required this.myTitle, required this.myIconColor, required this.myTitleColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(left: 40),
            child: Text(
              myNumber,
              style: TextStyle(
                color: myDeepPurple,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'ConcertOne-Regular',
              ),
            ),
          ),
          Icon(
            myIcon,
            color: myIconColor,
            size: 40.0,
          ),
          Text(
            myTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: myTitleColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Marker-Felt',
            ),
          ),
        ],
      ),
    );
  }
}