import 'package:flutter/material.dart';

class ReUseableContainer extends StatelessWidget {
  ReUseableContainer({this.contColor, this.customChild, this.otp});
  Color? contColor;
  Widget? customChild;
  Function()? otp;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(onTap: otp, child: customChild),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: contColor,
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
