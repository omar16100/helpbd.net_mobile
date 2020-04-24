import 'package:helpbd.net/models/summary_model.dart';
import 'package:helpbd.net/screens/homescreen.dart';
import 'package:helpbd.net/services/summery_services.dart';
import 'package:helpbd.net/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'status.dart';

class MyApp1 extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'helpBD.net',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<Summary>(
          future: (firstTime) ? getSummary() : getSummaryLocally(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                deviceOffline = true;
              }
              if (deviceOffline) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'No Internet',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Please Check your Internet ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 1.5,
                        ),
                      ),
                      Text(
                        'Stay Home, Stay Safe',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: UiElements.primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            deviceOffline = false;
                          });
                        },
                        child: Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                );
              } else //this will be the main page
              {
                for (int i = 0; i < snapshot.data.countries.length; i++) {
                  if (snapshot.data.countries[i].countryCode == countryCode) {
                    countryIndex = i;
                  }
                  if (snapshot.data.countries[i].countryCode == 'CN') {
                    chinaIndex = i;
                  }
                } //to find the country
                summaryData = snapshot.data;
                return HomeScreens();
              }
            } else
              return Center(
                  child: CircularProgressIndicator(
                semanticsLabel: 'Loading',
              ));
          }),
    );
  }
}
