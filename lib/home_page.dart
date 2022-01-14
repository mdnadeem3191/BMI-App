import 'dart:math';

import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_container.dart';
import 'calculate_button.dart';
import 'result_page.dart';
import 'change_mode.dart';

enum Gender {
  male,
  female,
}
Gender? selectedGender;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 180;
  int weight = 60;
  int age = 18;
  String? interpreter;
  String? normal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: appdrawerColour),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              color: kAppBarTextColorMainPage,
              fontWeight: FontWeight.w600,
              fontSize: 23),
        ),
      ),
      drawer: Drawer(
          child: SafeArea(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red[900]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Visual Theme",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              tileColor: activeDrawerColor,
              title: Text(
                "Light Theme",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              onTap: () {
                setState(() {
                  lightMode();
                });
              },
            ),
            ListTile(
              tileColor: inactiveDrawerColor,
              title: Text(
                "Dark Theme",
                style: TextStyle(color: Colors.black, fontSize: 19),
              ),
              onTap: () {
                setState(() {
                  darkMode();
                });
              },
            ),
          ],
        ),
      )),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReUseableContainer(
                      contColor: selectedGender == Gender.male
                          ? kActiveColor
                          : kInactiveColor,
                      customChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 90,
                            color: maleColors,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: maleColors),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReUseableContainer(
                      contColor: selectedGender == Gender.female
                          ? kActiveColor
                          : kInactiveColor,
                      customChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                            color: femaleColors,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: femaleColors),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseableContainer(
                    contColor: kActiveColor,
                    customChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              color: floatingActionButtonColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: "hero1",
                              onPressed: () {
                                setState(() {
                                  if (height > 1) {
                                    height--;
                                  }
                                });
                              },
                              backgroundColor: floatingActionButtonColor,
                              child: Icon(
                                Icons.remove,
                                color: redColor,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toString(),
                                  style: TextStyle(
                                      color: floatingActionButtonColor,
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "cm",
                                  style: TextStyle(
                                      color: floatingActionButtonColor),
                                ),
                              ],
                            ),
                            FloatingActionButton(
                              heroTag: "hero2",
                              onPressed: () {
                                setState(() {
                                  height++;
                                });
                              },
                              backgroundColor: floatingActionButtonColor,
                              child: Icon(
                                Icons.add,
                                color: greenColor,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 0,
                          max: 220,
                          activeColor: activeColor,
                          inactiveColor: inActiveColor,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUseableContainer(
                    customChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Weight",
                            style: kLabelStyle.copyWith(
                                color: floatingActionButtonColor)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  color: floatingActionButtonColor,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Kg",
                              style:
                                  TextStyle(color: floatingActionButtonColor),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: "hero3",
                              onPressed: () {
                                setState(() {
                                  if (weight > 1) {
                                    weight--;
                                  }
                                });
                              },
                              backgroundColor: floatingActionButtonColor,
                              child: Icon(
                                Icons.remove,
                                color: redColor,
                              ),
                            ),
                            FloatingActionButton(
                              heroTag: "hero4",
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: floatingActionButtonColor,
                              child: Icon(
                                Icons.add,
                                color: greenColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    contColor: kActiveColor,
                  ),
                ),
                Expanded(
                  child: ReUseableContainer(
                    customChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Age",
                            style: kLabelStyle.copyWith(
                                color: floatingActionButtonColor)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  color: floatingActionButtonColor,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Yrs",
                              style:
                                  TextStyle(color: floatingActionButtonColor),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: "hero5",
                              onPressed: () {
                                setState(() {
                                  if (age > 1) {
                                    age--;
                                  }
                                });
                              },
                              backgroundColor: floatingActionButtonColor,
                              child: Icon(
                                Icons.remove,
                                color: redColor,
                              ),
                            ),
                            FloatingActionButton(
                              heroTag: "hero6",
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: floatingActionButtonColor,
                              child: Icon(
                                Icons.add,
                                color: greenColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    contColor: kActiveColor,
                  ),
                )
              ],
            ),
          ),
          CalculateButton(
            calculateButtonText: "Calculate",
            onPressed: () {
              if (selectedGender != null) {
                double bmi = weight / pow(height / 100, 2);
                if (bmi >= 25) {
                  interpreter =
                      'You have a higher than normal body weight. Try to exercise more';
                  normal = "Over Weight";
                } else if (bmi > 18.5) {
                  interpreter = 'You have a normal body weight. Good Job 👍';
                  normal = "Normal";
                } else {
                  'You have a lower than normal body weight. You can eat a bit more.';
                  normal = "Under Weight";
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmiResultPage: bmi,
                      interpreterResultPage: interpreter,
                      bmiNormalResultPage: normal,
                    ),
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    // title: const Text('AlertDialog Title'),
                    content: const Text('Select a Gender'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            },
          )
        ],
      )),
    );
  }
}
