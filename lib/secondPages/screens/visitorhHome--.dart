// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'package:argon_flutter/constants/Theme.dart';

// class Pro extends StatelessWidget {
//   _launchURL() async {
//     const url = 'https://creative-tim.com';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(children: <Widget>[
//       Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/img/pro-background.png"),
//                   fit: BoxFit.cover))),
//       Padding(
//         padding:
//             const EdgeInsets.only(top: 73, left: 32, right: 32, bottom: 16),
//         child: Container(
//           child: SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Image.asset("assets/img/logo-argon.png", scale: 1),
//                     SizedBox(height: 16.0),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 48.0),
//                       child: Text.rich(TextSpan(
//                           text: "Argon Design System",
//                           style: TextStyle(color: Colors.white, fontSize: 58),
//                           children: <InlineSpan>[
//                             WidgetSpan(
//                                 child: Container(
//                                     padding: EdgeInsets.all(2.0),
//                                     margin: EdgeInsets.fromLTRB(
//                                         0.0, 0.0, 50.0, 50.0),
//                                     decoration: BoxDecoration(
//                                         borderRadius:
//                                             BorderRadius.circular(4.0),
//                                         color: Color.fromRGBO(17, 205, 239, 1)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                           top: 0, bottom: 0, left: 4, right: 4),
//                                       child: Text("PRO",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 16,
//                                           )),
//                                     ))),
//                           ])),
//                     ),
//                   ],
//                 ),
//                 Text(
//                     "Take advantage of all the features and screens made by Creative-Tim, coded on Flutter for both",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w200)),
//                 // SizedBox(height: 26.0),
//                 Row(children: <Widget>[
//                   Image.asset("assets/img/logo-ios.png", scale: 2.6),
//                   SizedBox(width: 30.0),
//                   Image.asset("assets/img/logo-android.png", scale: 2.6)
//                 ]),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 16.0),
//                   child: SizedBox(
//                     width: double.infinity,
//                     child: FlatButton(
//                       textColor: ArgonColors.white,
//                       color: ArgonColors.info,
//                       onPressed: _launchURL,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(4.0),
//                       ),
//                       child: Padding(
//                           padding: EdgeInsets.only(
//                               left: 16.0, right: 16.0, top: 12, bottom: 12),
//                           child: Text("BUY NOW",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 16.0))),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       )
//     ]));
//   }
// }

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

class VisitorHome extends StatelessWidget {
  // final GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Abdullah's",
          ),
          leading: Icon(
            Icons.menu,
            size: 40,
          ),
          actions: [
            Container(
              child: Icon(
                Icons.search,
                size: 40,
              ),
              width: 75,
            )
          ],
          elevation: 30,
          brightness: Brightness.dark,
        ),

        // Navbar(
        //   title: "Restaurant",
        //   searchBar: true,
        //   categoryOne: "Queue Up",
        //   categoryTwo: "Take Away",
        //   // tags: ['Queue Up', 'Take Away'],
        // ),
        backgroundColor: ArgonColors.bgColorScreen,
        // key: _scaffoldKey,
        drawer: ArgonDrawer(currentPage: "Home"),
        body: Container(
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 34.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //item 1
                CardSquare(
                    cta: "View restaurant",
                    title: homeCards["Ice Cream"]['title'],
                    img: homeCards["Ice Cream"]['image'],
                    tap: () {
                      Navigator.pushNamed(context, '/homepage');
                    }),
                // end of item one
                SizedBox(height: 8), // Spacing
                CardSquare(
                    cta: "View restaurant",
                    title: homeCards["Ice Cream"]['title'],
                    img: homeCards["Ice Cream"]['image'],
                    tap: () {
                      Navigator.pushNamed(context, '/homepage');
                    }),
                SizedBox(height: 8),
                CardSquare(
                    cta: "View restaurante",
                    title: homeCards["Fashion"]['title'],
                    img: homeCards["Fashion"]['image'],
                    tap: () {
                      Navigator.pushNamed(context, '/homepage');
                    }),
                SizedBox(height: 8),
                CardSquare(
                    cta: "View restaurant",
                    title: homeCards["Ice Cream"]['title'],
                    img: homeCards["Ice Cream"]['image'],
                    tap: () {
                      Navigator.pushNamed(context, '/homepage');
                    }),
                SizedBox(height: 8),
                CardSquare(
                    cta: "View restaurant",
                    title: homeCards["Ice Cream"]['title'],
                    img: homeCards["Ice Cream"]['image'],
                    tap: () {
                      Navigator.pushNamed(context, '/homepage');
                    }),
                SizedBox(height: 8),
              ],
            ),
          ),
        ));
  }
}
