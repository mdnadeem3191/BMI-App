import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({this.calculateButtonText, this.onPressed});
  String? calculateButtonText;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 12),
        height: 75,
        width: 370,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: kCalculateButton),
        child: Center(
          child: Text(
            calculateButtonText!,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: calculateButtonColor),
          ),
        ),
      ),
    );
  }
}
