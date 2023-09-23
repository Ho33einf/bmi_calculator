import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show BorderRadius, BoxDecoration, BuildContext, Color, Container, EdgeInsets, StatelessWidget, Widget;



class ContainerReusableClass extends StatelessWidget {

  final VoidCallback? onPress;
  final Color? color;
  final Widget? child;
  ContainerReusableClass({this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color ?? kInactiveColorCard,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
