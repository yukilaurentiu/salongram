import 'package:flutter/material.dart';
import 'package:flutter_insta/flutter_insta.dart';
import 'nav_bar.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  FlutterInsta flutterInsta = FlutterInsta();
  TextEditingController usernameController = TextEditingController();

  String? username, followers = " ", following, bio, website, profileimage;
  bool pressed = false;
  bool downloading = false;


  @override
  void initState() {
  super.initState();
  }

  Future printDetails(String username) async {
    await flutterInsta.getProfileData("sample.acc.salon");
    print(flutterInsta.feedImagesUrl);
    // await flutterInsta.getProfileData(username);
    // setState(() {
    //   this.username = flutterInsta.username; //username
    //   followers = flutterInsta.followers; //number of followers
    //   this.following = flutterInsta.following; // number of following
    //   this.website = flutterInsta.website; // bio link
    //   this.bio = flutterInsta.bio; // Bio
    //   this.profileimage = flutterInsta.imgurl; // Profile picture URL
    //   print(this.username);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(context),
      body: ElevatedButton(
        child: const Text("Print Details", style:TextStyle(
          color: Colors.black,
        ),),
        onPressed: () async {
          setState(() {
            pressed = true;
          });
          printDetails(usernameController.text); //get Data
        },
      ),
    );
  }

}



