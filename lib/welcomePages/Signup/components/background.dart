import 'package:GRSON/welcomepages/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images_welcomepages/signup_top.png",
                width: size.width * 0.35, color: Colors.blue),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, size: 55),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
            ),
            width: size.width * 0.25,
            height: size.width * 0.40,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images_welcomepages/main_bottom.png",
                width: size.width * 0.25, color: Colors.blue[200]),
          ),
          child,
        ],
      ),
    );
  }
}
