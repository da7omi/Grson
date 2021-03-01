import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/Signup/components/body.dart';
import 'package:GRSON/welcomePages/components/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:GRSON/welcomepages/signin/components/background.dart';
import 'package:GRSON/welcomepages/Signup/signup_screen.dart';
import 'package:GRSON/welcomepages/components/already_have_account.dart';
import 'package:GRSON/welcomepages/components/rounded_button.dart';
import 'package:GRSON/welcomepages/components/rounded_input_email_field.dart';
import 'package:GRSON/welcomepages/components/rounded_password_field.dart';

import '../../constants.dart';
// import 'package:GRSON/secondpages/screens/home.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyBody();
}

class _MyBody extends State<Body> {
  SingingCharacter temp = SingingCharacter.customer;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      page: 'WelcomePage',
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN IN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            SizedBox(height: size.height * 0.05),
            // SizedBox(height: size.height * 0.02),
            RoundedInputEmailField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Divider(
              color: ArgonColors.muted,
              height: 10,
              thickness: 0.5,
              indent: 40,
              endIndent: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Radio(
                activeColor: kPrimaryColor,
                value: SingingCharacter.customer,
                groupValue: temp,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    temp = value;
                  });
                },
              ),
              Text(
                'Customer',
                style: TextStyle(fontSize: 20),
              ),
              Radio(
                activeColor: kPrimaryColor,
                value: SingingCharacter.restaurant,
                groupValue: temp,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    temp = value;
                  });
                },
              ),
              Text(
                'Restaurant',
                style: TextStyle(fontSize: 20),
              ),
            ]),
            RoundedButton(
              text: "SIGN IN",
              press: () {
                Navigator.pushReplacementNamed(context, '/home');
                //change this
              },
            ),
            SizedBox(height: size.height * 0.02),
            FirgetPassword(
              press: () {
                Navigator.pushReplacementNamed(context, 'Forgot Password');
                //change this
              },
            ),
            SizedBox(height: size.height * 0.01),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
