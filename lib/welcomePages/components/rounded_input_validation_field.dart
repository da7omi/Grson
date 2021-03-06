//
// abdulllah's
//

import 'package:GRSON/welcomePages/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedInputValidationField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputValidationField({
    Key key,
    this.hintText,
    this.icon = Icons.inbox,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
      //write like input person, and chick text field container
    );
  }
}
