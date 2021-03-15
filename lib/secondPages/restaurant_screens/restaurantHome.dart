import 'package:GRSON/secondPages/widgets/card-square.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';
import 'package:GRSON/secondpages/theme/Theme.dart';
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

class RestaurantHome extends StatefulWidget {
  RestaurantHome({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyRestaurantHome();
}

class _MyRestaurantHome extends State<RestaurantHome> {
  bool open_close = false;
  String state = "CLOSE";
  @override
  Widget build(BuildContext context) {
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
              width: 300,
            ),
            CardSquare(
                cta: "View restaurant",
                title: homeCards["Ice Cream"]['title'],
                img: homeCards["Ice Cream"]['image'],
                tap: () {
                  Navigator.pushNamed(context, "Restaurant page");
                }),
            SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: RaisedButton(
                onPressed: () {
                  setState(() => open_close = !open_close);
                  if (open_close) {
                    setState(() => state = 'OPEN');
                  } else {
                    setState(() => state = 'CLOSE');
                  }
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 200,
                  height: 105,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: open_close
                          ? <Color>[
                              kPrimaryColor,
                              kSuccess, //second color
                            ]
                          : <Color>[
                              kPrimaryColor,
                              kError, //second color
                            ],
                    ),
                  ),
                  padding: EdgeInsets.all(30),
                  child: Column(children: [
                    Text(state,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    // Text('Restaurant',
                    //     style: TextStyle(
                    //       fontSize: 30,
                    //     )),
                  ]),
                ),
              ),
            )
          ]),
        ));
  }
}
