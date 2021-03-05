import 'package:GRSON/secondPages/theme/Theme.dart';
import 'package:GRSON/welcomePages/components/enum.dart';
import 'package:GRSON/welcomePages/components/forget_password.dart';
import 'package:GRSON/welcomePages/components/rounded_number_field.dart';
import 'package:GRSON/welcomePages/components/rounded_queue_field.dart';
import 'package:flutter/material.dart';
import 'package:GRSON/welcomepages/signin/components/background.dart';
import 'package:GRSON/welcomepages/components/already_have_account.dart';
import 'package:GRSON/welcomepages/components/rounded_button.dart';
import 'package:GRSON/welcomepages/components/rounded_input_email_field.dart';
import 'package:GRSON/welcomepages/components/rounded_password_field.dart';

import 'package:GRSON/welcomepages/constants.dart';
// import 'package:GRSON/secondpages/screens/home.dart';

class QueueEdit extends StatefulWidget {
  QueueEdit({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyBody();
}
//final TextEditingController _firstNameController = new TextEditingController();
//String firstName = User.instance.first_name;
//final TextEditingController _lastNameController = new TextEditingController();
//String lastName = User.instance.last_name;

class _MyBody extends State<QueueEdit> {
  SingingCharacter temp = SingingCharacter.customer;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
      page: 'WelcomePage',
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Queue",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
            SizedBox(height: size.height * 0.05),
            // SizedBox(height: size.height * 0.02),
            RoundedQueueField(
              hintText: "Queue Name",
              onChanged: (value) {},
            ),
            RoundedNumberField(
              hintText: "No. of Customers",
              onChanged: (value) {},
            ),
            Divider(
              color: ArgonColors.muted,
              height: 10,
              thickness: 0.5,
              indent: 40,
              endIndent: 40,
            ),
            RoundedButton(
              text: "Save",
              press: () {
                if (temp == SingingCharacter.customer)
                  Navigator.pushReplacementNamed(context, '/home');
                else
                  Navigator.pushReplacementNamed(context, "Restaurant Home");
                //change this
              },
            ),
          ],
        ),
      ),
    ));
  }
}
