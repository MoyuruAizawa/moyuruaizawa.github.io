import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
              colors: [const Color(0xADD9E9).withOpacity(0.8), const Color(0xB6888E).withOpacity(0.5)],
            )),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        spacing: 16,
                        children: [
                          avatar(),
                          resume(context),
                        ],
                      ),
                      textButtons(context)
                    ],
                  ),
                )
              ],
            )));
  }

  Widget avatar() {
    return CircleAvatar(
      backgroundImage: AssetImage('assets/avatar.png'),
      backgroundColor: Colors.transparent,
      radius: 85,
    );
  }

  Widget resume(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.vertical,
      spacing: 4,
      children: [
        Text('Moyuru Aizawa', style: Theme.of(context).textTheme.headline1),
        Text('Software Engineer', style: Theme.of(context).textTheme.bodyText1),
        SizedBox(height: 8),
        Text('01.2021  RABO Inc.', style: Theme.of(context).textTheme.bodyText1),
        Text('09.2019  Azit Inc.', style: Theme.of(context).textTheme.bodyText1),
        Text('04.2017  CyberAgent Inc.', style: Theme.of(context).textTheme.bodyText1),
        Text('05.2016  Eureka Inc.', style: Theme.of(context).textTheme.bodyText1),
        Text('09.2014  H.I.C. Inc.', style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }

  Widget textButtons(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      runAlignment: WrapAlignment.start,
      spacing: 4,
      children: [
        SizedBox(height: 8),
        textButton(context, 'Twitter', "https://twitter.com/MoyuruAizawa"),
        textButton(context, 'GitHub', "https://github.com/MoyuruAizawa"),
        textButton(context, 'SpeakerDeck', "https://speakerdeck.com/lvla"),
        textButton(context, 'Blog', "https://blog.moyuru.io/"),
        textButton(context, 'Filmarks', "https://filmarks.com/users/aizawamoyuru"),
      ],
    );
  }

  Widget textButton(BuildContext context, String label, String link) {
    return InkWell(
        child: Text(label, style: Theme.of(context).textTheme.bodyText2),
        onTap: () {
          window.open(link, label);
        });
  }
}
