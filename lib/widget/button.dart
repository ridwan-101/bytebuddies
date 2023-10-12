import 'package:flutter/material.dart';

import '../model/color.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final double width;
  final double height;

  CustomButton(
      {required this.buttonText, this.width = 100.0, this.height = 40.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.green),
          foregroundColor: MaterialStateProperty.all<Color>(AppColors.white),
        ),
        onPressed: () {
          // Add your button's functionality here
          print("CustomButton is clicked and working");
        },
        child: Text(
          buttonText,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white),
        ),
      ),
    );
  }
}
