import 'package:bmi_calculator/components/Container_reusable.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
 final String? bmiResult , resultText , interpretation;
 ResultPage({required this.bmiResult, required this.resultText, required this.interpretation});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1B3358),
      appBar: AppBar(
        backgroundColor: Color(0XFF06142e),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text('وضعیت سلامت شما', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerReusableClass(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        ':رنج سلامت بدن',
                        style: kGrayBodyTextStyle,
                      ),
                      Text(
                        '18.5 - 25 kg/m2',
                        style: kBodyTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      interpretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Bottombutton(
                    title: 'محاسبه مجدد',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
