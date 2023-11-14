import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickTopupUi extends StatefulWidget {
  const QuickTopupUi({super.key});

  @override
  State<QuickTopupUi> createState() => _QuickTopupUiState();
}

class _QuickTopupUiState extends State<QuickTopupUi> {
  int selectedAmount = -1; // Track the selected box, -1 means none selected

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildTopupButton(100),
            buildTopupButton(200),
            buildTopupButton(500),
          ],
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildTopupButton(1000),
            buildTopupButton(2000),
            buildTopupButton(5000),
          ],
        ),
      ],
    );
  }

  Widget buildTopupButton(int amount) {
    ThemeData theme = Theme.of(context);
    bool isSelected = selectedAmount == amount;

    return InkWell(
      onTap: () {
        setState(() {
          selectedAmount = amount;
          //when conatiner is clicked amount wiill also be added to textformfield called amount
        });
        // Perform other actions if needed
      },
      child: Container(
        height: 50.h,
        width: 120.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? AppColors.seaGreen : AppColors.seaGreen,
            width: 2.0.w,
          ),
          color: isSelected ? AppColors.seaGreen : null,
        ),
        child: Center(
          child: Text(
            "₦$amount",
            style: theme.textTheme.titleMedium?.copyWith(
              color: isSelected ? Colors.white : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
