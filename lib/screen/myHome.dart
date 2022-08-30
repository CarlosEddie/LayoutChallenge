import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/myBottomNavBar.dart';
import 'package:flutter_application_2/components/myCard.dart';
import 'package:flutter_application_2/components/myFABContent.dart';
import 'package:flutter_application_2/components/myIconInfo.dart';
import 'package:flutter_application_2/components/myExpandableFab.dart';
import 'package:flutter_application_2/constants.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _change = false;
  int _currentIndex = 0;

  void _changeLayout() {
   setState(() {
      _change = !_change;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _change ? myDTBackgroundColor : myBackgroundColor,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Spacer(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage('assets/images/perfil.png'),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 135),
                          child: Text(
                            'Olá',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: _change ? myGrey : myPurple,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Marker-Felt',
                            ),
                          ),
                        ),
                        Text(
                          'Ziraldo!',
                          style: TextStyle(
                            fontSize: 55.0,
                            color: _change ? Colors.white : myDarkPurple,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Marker-Felt',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Parabéns! Esse mês você fez',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: _change ? myGrey : myPurple,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Marker-Felt',
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            _change ? Icons.visibility_off : Icons.visibility,
                            color: myDeepPurple,
                            
                          ), onPressed: _changeLayout,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        MyCard(myInfo: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MyIconInfo(myNumber: _change ? '*' : '12', myIcon: Icons.shop_2, myTitle: 'novos\npedidos', myIconColor: _change ? Colors.white : myDarkPurple, myTitleColor: _change ? myGrey : myPurple,),
                            MyIconInfo(myNumber: _change ? '*' : '20', myIcon: Icons.people, myTitle: 'novos\nclientes', myIconColor: _change ? Colors.white : myDarkPurple, myTitleColor: _change ? myGrey : myPurple,),
                            MyIconInfo(myNumber: _change ? '*' : '12', myIcon: Icons.location_city, myTitle: 'novas\ncidades', myIconColor: _change ? Colors.white : myDarkPurple, myTitleColor: _change ? myGrey : myPurple,),
                          ],
                        ), myColor: _change ? myDarkPurple : myGrey,),
                        MyCard(myInfo: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.shop_2,
                              color: _change ? Colors.white : myDarkPurple,
                              size: 50.0,
                            ),
                            Container(
                              margin: new EdgeInsets.symmetric(vertical: 27.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    _change ? 'R\$ -,--' : 'R\$ 34.000,00',
                                    style: TextStyle(
                                      color: _change ? myGrey : myPurple,
                                      fontSize: 35.0,
                                      fontFamily: 'ConcertOne-Regular',
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 55),
                                    child: Text(
                                      'em novos pedidos',
                                      style: TextStyle(
                                        color: _change ? Colors.white : myDarkPurple,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'ConcertOne-Regular',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ), myColor: _change ? myDarkPurple : myGrey,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        selectedIndex: _currentIndex,
        backgroundColor: _change ? myDTBackgroundColor : myBackgroundColor,
        showElevation: false,
        itemCornerRadius: 20,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: _change ? myDarkPurple : Colors.white,
            ),
            title: Text(
              'Home', 
              style: TextStyle(
                color: _change ? myDarkPurple : Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Marker-Felt',
              )
            ),
            activeColor: _change ? Colors.white : myDarkPurple,
            inactiveColor: myDeepPurple,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.shop_2,
              color: _change ? myDarkPurple : Colors.white,
            ),
            title: Text(
              'Pedidos', 
              style: TextStyle(
                color: _change ? myDarkPurple : Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Marker-Felt',
              )
            ),
            activeColor: _change ? Colors.white : myDarkPurple,
            inactiveColor: myDeepPurple,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.people,
              color: _change ? myDarkPurple : Colors.white,
            ),
            title: Text(
              'Clientes', 
              style: TextStyle(
                color: _change ? myDarkPurple : Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Marker-Felt',
              )
            ),
            activeColor: _change ? Colors.white : myDarkPurple,
            inactiveColor: myDeepPurple,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.show_chart,
              color: _change ? myDarkPurple : Colors.white,
            ),
            title: Text(
              'Ganhos', 
              style: TextStyle(
                color: _change ? myDarkPurple : Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Marker-Felt',
              )
            ),
            activeColor: _change ? Colors.white : myDarkPurple,
            inactiveColor: myDeepPurple,
            textAlign: TextAlign.center,
          ),
        ],
      ),

      floatingActionButton: MyExpandableFab(
        distance: 100.0,
        children: [
          MyFabContent(myFABContentIcon: Icons.person_add, myFABContentText: 'representantes'),
          MyFabContent(myFABContentIcon: Icons.add_shopping_cart, myFABContentText: 'pedidos'),
          MyFabContent(myFABContentIcon: Icons.person_add, myFABContentText: 'clientes'),
        ],
      ),
    );
  }
}