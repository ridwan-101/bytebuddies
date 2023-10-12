import 'package:bytebuddies/model/color.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  bool _textVisible = true;

  void toggleTextVisibility() {
    setState(() {
      _textVisible = !_textVisible;
    });
  }

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
                GestureDetector(
                  onTap: toggleTextVisibility,
                  child: Icon(
                    _textVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              _textVisible ? "₦1000" : "*****", // Show or hide text
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
