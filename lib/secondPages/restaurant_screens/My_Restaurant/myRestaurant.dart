import 'package:GRSON/secondPages/restaurant_screens/Information/homepage.dart';
import 'package:GRSON/secondPages/restaurant_screens/Queue/homePage.dart';
import 'package:GRSON/secondPages/restaurant_screens/Take_Away/takeaway.dart';
import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/secondPages/widgets/drawer.dart';
import 'package:GRSON/secondPages/widgets/input.dart';
import 'package:GRSON/welcomePages/components/rounded_input_location_field.dart';
import 'package:GRSON/welcomePages/components/rounded_input_person_field.dart';
import 'package:GRSON/welcomePages/constants.dart';
import 'package:flutter/material.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 25),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "Restaurant Home");
            },
          ),
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
            HomeInformationPage(),
            HomeQueuePage(),
            HomeTake_AwayPage(),
          ],
        ),
      ),
    );
  }
}
