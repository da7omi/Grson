import 'package:flutter/material.dart';
import 'package:GRSON/welcomePages/Welcome/components/body.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,                
      child: Body(),
    ));
  }
}
