import 'package:flutter/material.dart';

class ColumnCard extends StatelessWidget {
  final IconData? icon;
  final String? label;

  ColumnCard({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Color(0XFFDB83B8),
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label!,
          style: TextStyle(
            fontSize: 22,
            color: Color(0xFFf5d7db),
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
