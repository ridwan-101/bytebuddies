import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataPurchaseUi extends StatefulWidget {
  const DataPurchaseUi({super.key});

  @override
  State<DataPurchaseUi> createState() => _DataPurchaseUiState();
}

class _DataPurchaseUiState extends State<DataPurchaseUi> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                print("Purchase Airtime clicked");
              },
              child: Container(
                height: 90.h,
                width: 170.w,
                decoration: BoxDecoration(
                  color: AppColors.seaGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Icon(
                        Icons.phone_android_outlined,
                        color: AppColors.white,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Purchase Airtime",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print("Purchase Data clicked");
              },
              child: Container(
                height: 90.h,
                width: 170.w,
                decoration: BoxDecoration(
                  color: AppColors.seaGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Icon(
                        Icons.signal_cellular_alt,
                        color: AppColors.white,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Purchase Data",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                print("Electricty  clicked");
              },
              child: Container(
                height: 90.h,
                width: 170.w,
                decoration: BoxDecoration(
                  color: AppColors.seaGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Icon(
                        Icons.lightbulb_outline_rounded,
                        color: AppColors.white,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Electricity",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print("cable tvclicked");
              },
              child: Container(
                height: 90.h,
                width: 170.w,
                decoration: BoxDecoration(
                  color: AppColors.seaGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Icon(
                        Icons.tv,
                        color: AppColors.white,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Cable TV",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
