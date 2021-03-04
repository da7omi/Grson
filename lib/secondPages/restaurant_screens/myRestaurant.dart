import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/secondPages/widgets/drawer.dart';
import 'package:GRSON/secondPages/widgets/input.dart';
import 'package:GRSON/welcomePages/components/rounded_input_location_field.dart';
import 'package:GRSON/welcomePages/components/rounded_input_person_field.dart';
import 'package:flutter/material.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Restaurant's page",
          ),
          elevation: 30,
          brightness: Brightness.dark,
          bottom: TabBar(
// controller: tabController,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  "Information",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Queues",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Take Away",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: ArgonColors.bgColorScreen,
        body: TabBarView(
          children: [
            SafeArea(
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 24.0, right: 24.0, bottom: 32),
                  child: Card(
                      elevation: 9,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              decoration: BoxDecoration(
                                  color: ArgonColors.white,
                                  border: Border(
                                      bottom: BorderSide(
                                    width: 0.5,
                                    color: ArgonColors.muted,
                                  ))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    // child: Text("Sign up with",
                                    //     style: TextStyle(
                                    //         color: ArgonColors.text,
                                    //         fontSize: 16.0)),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
/*   Container(
// width: 0,
height: 36,
child: RaisedButton(
textColor: ArgonColors.primary,
color: ArgonColors.secondary,
onPressed: () {},
shape: RoundedRectangleBorder(
borderRadius:
BorderRadius.circular(4)),
child: Padding(
padding: EdgeInsets.only(
bottom: 10,
top: 10,
left: 14,
right: 14),
child: Row(
mainAxisAlignment:
MainAxisAlignment
.spaceAround,
children: [
Icon(
FontAwesomeIcons
.github,
size: 13),
SizedBox(
width: 5,
),
Text("GITHUB",
style: TextStyle(
fontWeight:
FontWeight
.w600,
fontSize: 13))
],
))),
),*/
                                        Container(
// width: 0,
                                          height: 36,
                                          child: RaisedButton(
                                              textColor: ArgonColors.primary,
                                              color: ArgonColors.secondary,
                                              onPressed: () {},
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10,
                                                      top: 10,
                                                      left: 8,
                                                      right: 8),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      // Icon(
                                                      //     FontAwesomeIcons
                                                      //         .facebook,
                                                      //     size: 13),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        "Add profile photo +",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14),
                                                      ),
                                                    ],
                                                  ))),
                                        ),
                                      ],
                                    ),
                                  ),
// Divider()
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.35,
                              color: Color.fromRGBO(244, 245, 247, 1),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          RoundedInputPersonField(
                                            hintText: "Restaurant name",
                                            onChanged: (value) {},
                                          ),
                                          RoundedInputLocationField(
                                            hintText: "Restaurant location URL",
                                            onChanged: (value) {},
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: Center(
                                          child: FlatButton(
                                            textColor: ArgonColors.white,
                                            color: ArgonColors.primary,
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, '/home');
                                            },
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(29.0),
                                            ),
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 16.0,
                                                    right: 16.0,
                                                    top: 12,
                                                    bottom: 12),
                                                child: Text("SAVE",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 20.0))),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      )),
                ),
              ]),
            ),
            Icon(Icons.directions_transit), // QUEUES ya zbaaaal
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
