import 'package:flutter/material.dart';

import '../constants.dart';
import 'myExpandableFab.dart';

class MyFabContent extends StatelessWidget {
  final IconData myFABContentIcon;
  final String myFABContentText;

  const MyFabContent({ Key? key, required this.myFABContentIcon, required this.myFABContentText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            ActionButton(
            icon: Icon(
                myFABContentIcon,
                color: Colors.white,
              ),
          ),
          Text(
            myFABContentText,
            style: TextStyle(
              color: myPurple,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Marker-Felt',
            ),
          )
        ],
      ),
    );
  }
}