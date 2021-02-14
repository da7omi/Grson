import 'package:GRSON/welcomePages/components/rounded_passwordCON_field.dart';
import 'package:flutter/material.dart';
import 'package:GRSON/welcomepages/signin/login_screen.dart';
import 'package:GRSON/welcomepages/Signup/components/background.dart';
// import 'package:GRSON/Screens/Signup/components/or_divider.dart';
import 'package:GRSON/welcomepages/components/already_have_account.dart';
import 'package:GRSON/welcomepages/components/rounded_button.dart';
import 'package:GRSON/welcomepages/components/rounded_input_email_field.dart';
import 'package:GRSON/welcomepages/components/rounded_input_person_field.dart';
import 'package:GRSON/welcomepages/components/rounded_password_field.dart';

import 'package:GRSON/welcomepages/signup/components/email_validation.dart';
// import 'package:GRSON/secondpages/screens/home.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      page:'WelcomePage',//this is for back button
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            SizedBox(height: size.height * 0.05),
            // SizedBox(height: size.height * 0.02),
            RoundedInputEmailField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputPersonField(
              hintText: "Your Username",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedConfirmPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {
                Navigator.pushReplacementNamed(context, 'WelcomePage' );
              },
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacementNamed(context, 'Sign In' );
              },
            ),
            SizedBox(height: size.height * 0.01),
          ],
        ),
      ),
    );
  }
}
