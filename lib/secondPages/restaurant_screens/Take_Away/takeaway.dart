import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

class HomeTake_AwayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBody();
}

class _MyBody extends State<HomeTake_AwayPage> {
  bool switchValueOne;
  bool switchValueTwo;
  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                          )),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 350,
                                  height: 36,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Turn Take Away on/off",
                                          style: TextStyle(
                                              color: ArgonColors.text)),
                                      Switch.adaptive(
                                        value: switchValueOne,
                                        onChanged: (bool newValue) => setState(
                                            () => switchValueOne = newValue),
                                        activeColor: ArgonColors.primary,
                                      ),
                                      // Switch.adaptive(
                                      //   value: switchValueOne,
                                      //   onChanged: (bool newValue) => setState(
                                      //       () => switchValueOne = newValue),
                                      //   activeColor: ArgonColors.primary,
                                      // ),
                                    ],
                                  ),
                                  // RaisedButton(
                                  //     textColor: ArgonColors.primary,
                                  //     color: Colors.yellowAccent,
                                  //     onPressed: () {},
                                  //     shape: RoundedRectangleBorder(
                                  //         borderRadius:
                                  //             BorderRadius.circular(30)),
                                  //     child: Padding(
                                  //         padding: EdgeInsets.only(
                                  //             bottom: 10,
                                  //             top: 10,
                                  //             left: 0,
                                  //             right: 0),
                                  //         child: Row(
                                  //           mainAxisAlignment:
                                  //               MainAxisAlignment.spaceAround,
                                  //           children: [
                                  //             // Icon(
                                  //             //     FontAwesomeIcons
                                  //             //         .facebook,
                                  //             //     size: 13),
                                  //             SizedBox(
                                  //               width: 0,
                                  //             ),
                                  //             Text(
                                  //               "Stop all queues",
                                  //               style: TextStyle(
                                  //                   fontWeight: FontWeight.w600,
                                  //                   fontSize: 14),
                                  //             ),
                                  //             // Icon(Icons.stop,
                                  //             //     size: 13),
                                  //           ],
                                  //         ))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 8),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                  ),
                                ),
                                Container(
                                  width: 140,
                                  height: 36,
                                  child: RaisedButton(
                                      textColor: ArgonColors.primary,
                                      color: ArgonColors.secondary,
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, 'Add item');
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 10,
                                              top: 10,
                                              left: 8,
                                              right: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Add item +",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 8),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                  ),
                                ),
                                // Container(
                                //   width: 160,
                                //   height: 36,
                                //   child: RaisedButton(
                                //       textColor: ArgonColors.primary,
                                //       color: Colors.yellowAccent,
                                //       onPressed: () {},
                                //       shape: RoundedRectangleBorder(
                                //           borderRadius:
                                //               BorderRadius.circular(30)),
                                //       child: Padding(
                                //           padding: EdgeInsets.only(
                                //               bottom: 10,
                                //               top: 10,
                                //               left: 0,
                                //               right: 0),
                                //           child: Row(
                                //             mainAxisAlignment:
                                //                 MainAxisAlignment.spaceAround,
                                //             children: [
                                //               // Icon(
                                //               //     FontAwesomeIcons
                                //               //         .facebook,
                                //               //     size: 13),
                                //               SizedBox(
                                //                 width: 0,
                                //               ),
                                //               Text(
                                //                 "Stop all queues",
                                //                 style: TextStyle(
                                //                     fontWeight: FontWeight.w600,
                                //                     fontSize: 14),
                                //               ),
                                //               // Icon(Icons.stop,
                                //               //     size: 13),
                                //             ],
                                //           ))),
                                // ),
                              ],
                            ),
                          ),
// Divider()
                        ],
                      )),
                  Container(
                      // height: MediaQuery.of(context).size.height * 0.35,
                      color: kPrimaryLightColor,
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          // needed
                          child: Row(
                            children: [
                              Text("double burger "),
                              FlatButton(
                                onPressed: () {
                                  // Respond to button press
                                  Navigator.pushReplacementNamed(
                                      context, '/home');
                                },
                                padding: const EdgeInsets.only(
                                    left: 4.0, top: 8, bottom: 8),
                                child: Text("Accepet order"),
                                color: Colors.green,
                              ),
                              FlatButton(
                                onPressed: () {
                                  // Respond to button press
                                  Navigator.pushReplacementNamed(
                                      context, '/home');
                                },
                                padding: const EdgeInsets.only(
                                    left: 4.0, top: 8, bottom: 8),
                                child: Text("Decline order"),
                                color: ArgonColors.error,
                              )
                            ],
                          ))),
                  Container(
                      color: Color.fromRGBO(244, 245, 247, 1),
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          // needed
                          child: Row(
                            children: [
                              Text("cheese burger"),
                              FlatButton(
                                onPressed: () {
                                  // Respond to button press
                                  Navigator.pushReplacementNamed(
                                      context, '/home');
                                },
                                padding: const EdgeInsets.only(
                                    left: 4.0, top: 8, bottom: 8),
                                child: Text("Accepet order"),
                                color: Colors.green,
                              ),
                              FlatButton(
                                onPressed: () {
                                  // Respond to button press
                                  Navigator.pushReplacementNamed(
                                      context, '/home');
                                },
                                padding: const EdgeInsets.only(
                                    left: 4.0, top: 8, bottom: 8),
                                child: Text("Decline order"),
                                color: ArgonColors.error,
                              )
                            ],
                          ))),
                ],
              )),
        ),
      ]),
    ));
  }

  // setState(bool Function() param0) {}

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
}
