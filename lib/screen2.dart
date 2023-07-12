import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'nav_bar.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(context),
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Wrap(
            children: card(context),
          ),
        ],
      ),
    );
  }
}

List<Widget> card(context) {
  List hairImg = [
    'images/hair1.jpg',
    'images/hair2.jpg',
    'images/hair3.jpg',
    'images/hair4.jpg'
  ];


  const double picPadding = 5.0;
  final double picSize =
      (MediaQuery.sizeOf(context).width / 3) - 2 * picPadding;

  List<Widget> result = [];

  void _launchURL() async {
    const url = 'instagram://user?username=yukidailypic&caption=hithere&media=https://www.wwf-junior.de/fileadmin/user_upload/Tiere/1440-Feldhase__MG_0099b__c__J_Fieber__igreen_media__WWF.jpg';
    // const url = 'instagram://user?username=yukidailypic';
    await launch(url);
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }




  for (var imgPath in hairImg) {
    var gestureDetector = GestureDetector(
        onTap: () => _launchURL(),
        child: Container(
          padding: const EdgeInsets.fromLTRB(
              picPadding, picPadding, picPadding, 0),
          child: Image.asset(
            imgPath,
            fit: BoxFit.cover,
            width: picSize,
            height: picSize,
          ),
        ),
      );
    result.add(
      gestureDetector,
    );
  }

  return result;
}

