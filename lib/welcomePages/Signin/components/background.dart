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
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images_welcomepages/main_top.png",
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
            right: 0,
            child: Image.asset("assets/images_welcomepages/login_bottom.png",
                width: size.width * 0.4, color: Colors.blue[100]),
          ),
          child,
        ],
      ),
    );
  }
}
