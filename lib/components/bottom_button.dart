import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';

class Bottombutton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;
  Bottombutton({required this.title, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title!,
            style: kLargButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.all(10),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kColorButton,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}