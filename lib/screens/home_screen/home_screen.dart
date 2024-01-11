

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../../common_widgets/custom_buttons/custom_button.dart';
import '../../constants/app_colors/app_color.dart';
import '../../constants/app_style/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ///<<<<<<<<=======Function For Calculation==========>>>>>>>>
  void equalPress() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser parser = Parser();
    Expression expression = parser.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double evl = expression.evaluate(EvaluationType.REAL, contextModel);
    result = evl.toString();
  }

  var userInput = '';
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: style2,
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        result.toString(),
                        style: style1,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomButton(
                          text: 'AC',
                          onPress: () {
                            userInput = '';
                            result = '';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: 'DEL',
                          onPress: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '%',
                          color: btn2Color,
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '/',
                          color: btn2Color,
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                          text: '7',
                          onPress: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '8',
                          onPress: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '9',
                          onPress: () {
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: 'x',
                          color: btn2Color,
                          onPress: () {
                            userInput += 'x';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                          text: '4',
                          onPress: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '5',
                          onPress: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '6',
                          onPress: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '-',
                          color: btn2Color,
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                          text: '1',
                          onPress: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '2',
                          onPress: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '3',
                          onPress: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '+',
                          color: btn2Color,
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                          text: '0',
                          onPress: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '00',
                          onPress: () {
                            userInput += '00';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '.',
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        CustomButton(
                          text: '=',
                          color: btn2Color,
                          onPress: () {
                            equalPress();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
