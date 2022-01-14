import 'package:final_bmi/calculate_button.dart';
import 'package:final_bmi/constants.dart';
import 'package:final_bmi/reusable_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {this.bmiNormalResultPage,
      this.bmiResultPage,
      this.interpreterResultPage});
  final String? bmiNormalResultPage;
  final String? interpreterResultPage;
  final double? bmiResultPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldColorsResultPage,
        appBar: AppBar(
          backgroundColor: resultContainerColor,
          centerTitle: true,
          title: Text(
            "BMI Calculator",
            style: TextStyle(
                color: resultPageAppBar,
                fontWeight: FontWeight.bold,
                fontSize: 23),
          ),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 5),
              child: Text(
                "Your Result",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: yourResult),
              ),
            ),
            // SizedBox(
            //   height: 8,
            // ),
            Expanded(
              child: ReUseableContainer(
                customChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiNormalResultPage!,
                      style: kResultPageStyle.copyWith(
                          color: floatingActionButtonColor),
                    ),
                    Text(
                      bmiResultPage!.toStringAsFixed(1),
                      style: kNResultPageStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        interpreterResultPage!,
                        style: kResultPageStyle.copyWith(
                            color: floatingActionButtonColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                contColor: resultContainerColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: CalculateButton(
                calculateButtonText: "Re-Calculate",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        )));
  }
}
