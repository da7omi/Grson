import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/secondPages/widgets/drawer.dart';
import 'package:GRSON/welcomePages/components/enum.dart';
import 'package:GRSON/welcomePages/components/forget_password.dart';
import 'package:GRSON/welcomePages/components/rounded_food_field.dart';
import 'package:GRSON/welcomePages/components/rounded_input_location_field.dart';
import 'package:GRSON/welcomePages/components/rounded_input_person_field.dart';
import 'package:GRSON/welcomePages/components/rounded_number_field.dart';
import 'package:GRSON/welcomePages/components/rounded_price_field.dart';
import 'package:GRSON/welcomePages/components/rounded_queue_field.dart';
import 'package:flutter/material.dart';
import 'package:GRSON/welcomepages/signin/components/background.dart';
import 'package:GRSON/welcomepages/components/already_have_account.dart';
import 'package:GRSON/welcomepages/components/rounded_button.dart';
import 'package:GRSON/welcomepages/components/rounded_input_email_field.dart';
import 'package:GRSON/welcomepages/components/rounded_password_field.dart';
import 'package:GRSON/welcomepages/constants.dart';
// import 'package:GRSON/secondpages/screens/home.dart';

class AddItem extends StatefulWidget {
  AddItem({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyBody();
}

class _MyBody extends State<AddItem> {
  SingingCharacter temp = SingingCharacter.customer;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 25),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "Restaurant page");
            },
          ),
          title: Text(
            "Add a New Item",
          ),
          elevation: 30,
          brightness: Brightness.dark,
        ),
        backgroundColor: ArgonColors.bgColorScreen,
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
                          height: MediaQuery.of(context).size.height * 0.27,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                              ),
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
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 36,
                                      child: RaisedButton(
                                          textColor: ArgonColors.primary,
                                          color: ArgonColors.secondary,
                                          onPressed: () {},
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
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Add an item picture +",
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
                            ],
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          color:
                              ArgonColors.white, // I will put background color
                          child: Padding(
                            padding: const EdgeInsets.all(25),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RoundedFoodField(
                                        hintText: "Item Name",
                                        onChanged: (value) {},
                                      ),
                                      RoundedPriceField(
                                        hintText: "Item Price",
                                        onChanged: (value) {},
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: ArgonColors.muted,
                                    height: 10,
                                    thickness: 0.5,
                                    indent: 40,
                                    endIndent: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Center(
                                      child: FlatButton(
                                        textColor: ArgonColors.white,
                                        color: ArgonColors.primary,
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, 'Restaurant page');
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
                                            child: Text("Add",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
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
        ));
  }
}
