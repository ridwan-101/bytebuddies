import 'package:bytebuddies/model/color.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 340,
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    fontSize: 25,
                  ),
                ),
                Icon(
                  Icons.visibility, // Replace with your desired icon
                  color: AppColors.white, // Icon color
                  size: 25, // Icon size
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "₦${1000}",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: AppColors.white,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
