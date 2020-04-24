import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoSysmtomps extends StatefulWidget {
  @override
  _InfoSysmtompsState createState() => _InfoSysmtompsState();
}

class _InfoSysmtompsState extends State<InfoSysmtomps> {
  _launchFeedbackURL() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLSeOwiIOR8MzmUl-mZGHyJsH_n3AJV7Ec6uqm5hdy1IYrY8nFw/viewform?usp=sf_link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchContributeURL() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLSeS0P5UooxvQr4dRM1buoPednTRLdfBLBAQGbw2jDzeT1_BLQ/viewform?usp=sf_link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchHelpURL() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLSc5vjMsg92TizHZeihBBun9Fwc3RywoPftA6eTYUg6daK-N7g/viewform?usp=sf_link';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(100),
      //padding: EdgeInsets.fromLTRB(UiElements.padding * 1.5, UiElements.padding,
      //    UiElements.padding * 1.5, UiElements.padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ButtonTheme(
              //   minWidth: 200.0,
              //   buttonColor: Color.fromRGBO(46, 54, 62, 0.8),
              //   child: RaisedButton(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: new BorderRadius.circular(18.0),
              //         side: BorderSide(color: Colors.red[50])),
              //     child: const Text('Statistics'),
              //     textColor: Color.fromRGBO(255, 250, 250, 0.9),
              //     onPressed: () {
              //       // Pushs the SecondScreen widget onto the navigation stack
              //       Navigator.of(context)
              //           .push(MaterialPageRoute(builder: (_) => MyApp1()));
              //     },
              //   ),
              // ),
              ButtonTheme(
                minWidth: 200.0,
                buttonColor: Color.fromRGBO(46, 54, 62, 0.8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red[50])),
                  child: const Text('Contribute'),
                  textColor: Color.fromRGBO(255, 250, 250, 0.9),
                  onPressed: _launchContributeURL,
                ),
              ),
              ButtonTheme(
                minWidth: 200.0,
                buttonColor: Color.fromRGBO(46, 54, 62, 0.8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red[50])),
                  child: const Text('Ask For Help'),
                  textColor: Color.fromRGBO(255, 250, 250, 0.9),
                  onPressed: _launchHelpURL,
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
                  onPressed: _launchFeedbackURL,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Work in progress.',
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
