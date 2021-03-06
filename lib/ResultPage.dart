import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  final String bmiresult, resultText, interpretation;

  ResultPage({@required this.bmiresult, @required this.resultText, @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(
                        resultText,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiresult,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                        ),
                      ),
                    ),
                    Text(
                      interpretation,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: FlatButton(
                  height: kBorderButtonHeight,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Re-Calculate'),
                  color: kBottomButtonColor,
                ),
              ),
            )
          ],
        ));
  }
}
