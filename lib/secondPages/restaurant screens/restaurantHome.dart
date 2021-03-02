import 'package:GRSON/secondPages/widgets/card-shopping.dart';
import 'package:GRSON/secondPages/widgets/card-square.dart';
// import 'package:GRSON/secondPages/widgets/card-square.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

import 'package:GRSON/secondpages/theme/Theme.dart';

//widgets
import 'package:GRSON/secondpages/widgets/navbar.dart';
import 'package:GRSON/secondpages/widgets/card-horizontal.dart';
import 'package:GRSON/secondpages/widgets/card-small.dart';
// import 'package:GRSON/secondpages/widgets/card-square.dart';
import 'package:GRSON/secondpages/widgets/drawer.dart';

final Map<String, Map<String, String>> homeCards = {
  "Ice Cream": {
    "title": "Ice cream is made with carrageenan …",
    "image":
        "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"
  },
  "Makeup": {
    "title": "Is makeup one of your daily esse …",
    "image":
        "https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80"
  },
  "Coffee": {
    "title": "Coffee is more than just a drink: It’s …",
    "image":
        "https://images.unsplash.com/photo-1500522144261-ea64433bbe27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2102&q=80"
  },
  "Fashion": {
    "title": "Fashion is a popular style, especially in …",
    "image":
        "https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1326&q=80"
  },
  "Argon": {
    "title": "Argon is a great free UI packag …",
    "image":
        "https://images.unsplash.com/photo-1482686115713-0fbcaced6e28?fit=crop&w=1947&q=80"
  }
};

class RestaurantHome extends StatelessWidget {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Restaurant's page",
          ),
          elevation: 30,
          brightness: Brightness.dark,
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        drawer: ArgonDrawer(
          currentPage: "Home",
        ),
        body: Container(
          padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 34),
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.only(bottom: 14.0, top: 14.0),
              child: Text(
                'My restaurant',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(29),
              ),
              width: size.width * 0.8,
            ),
            CardSquare(
                cta: "View restaurant",
                title: homeCards["Ice Cream"]['title'],
                img: homeCards["Ice Cream"]['image'],
                tap: () {
                  Navigator.pushNamed(context, '/homepage');
                }),
          ]),
        ));
  }
}
