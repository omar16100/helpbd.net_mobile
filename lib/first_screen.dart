import 'package:flutter/material.dart';

import 'package:helpbd.net/second_screen.dart';

import 'package:helpbd.net/app.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:helpbd.net/style.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(64, 65, 69, 0.9),
      appBar: AppBar(
        title: const Text('helpBD.net'),
        backgroundColor: Color.fromARGB(12, 12, 12, 12),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 200.0,
              buttonColor: Color.fromRGBO(46, 54, 62, 0.8),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red[50])),
                child: const Text('Statistics'),
                textColor: Color.fromRGBO(255, 250, 250, 0.9),
                onPressed: () {
                  // Pushs the SecondScreen widget onto the navigation stack
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MyApp1()));
                },
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              buttonColor: Color.fromRGBO(46, 54, 62, 0.8),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red[50])),
                child: const Text('Contribute'),
                textColor: Color.fromRGBO(255, 250, 250, 0.9),
                onPressed: () {
                  // Pushs the SecondScreen widget onto the navigation stack
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecondScreen()));
                },
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              buttonColor: Color.fromRGBO(46, 54, 62, 0.8),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red[50])),
                child: const Text('Help'),
                textColor: Color.fromRGBO(255, 250, 250, 0.9),
                onPressed: () {
                  // Pushs the SecondScreen widget onto the navigation stack
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecondScreen()));
                },
              ),
            ),
            ButtonTheme(
              minWidth: 200.0,
              buttonColor: Color.fromRGBO(46, 54, 62, 0.8),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red[50])),
                child: const Text('Feedback'),
                textColor: Color.fromRGBO(255, 250, 250, 0.9),
                onPressed: () {
                  // Pushs the SecondScreen widget onto the navigation stack
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecondScreen()));
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(UiElements.padding * 1.5),
          topRight: Radius.circular(UiElements.padding * 1.5),
        ),
        child: CurvedNavigationBar(
          items: <Widget>[
            Icon(
              FontAwesomeIcons.flagCheckered,
              color: Colors.white,
              semanticLabel: 'Global',
            ),
            Icon(FontAwesomeIcons.globeAsia, color: Colors.white),
            Icon(FontAwesomeIcons.info, color: Colors.white)
          ],
          //onTap: (index) {
          //  setState(() {
          //    print(UiElements.screenWidth);
          //  //  _selectedIndex = index;
          //  });
          //},
          animationCurve: Curves.linear,
          animationDuration: const Duration(milliseconds: 300),
          //index: _selectedIndex,
          height: UiElements.screenHeight * 0.075,
          backgroundColor: UiElements.primaryColor,
          buttonBackgroundColor: Colors.transparent,
          color: UiElements.cardViewColor3,
        ),
      ),
    );
  }
}
