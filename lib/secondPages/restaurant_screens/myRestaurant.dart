import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/secondPages/widgets/drawer.dart';
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
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
