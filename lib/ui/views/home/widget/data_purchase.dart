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
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      const Icon(
                        Icons.signal_cellular_alt,
                        color: AppColors.seaGreen,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Purchase Airtime",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.black,
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
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      const Icon(
                        Icons.wifi,
                        color: AppColors.seaGreen,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Purchase Data",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.black,
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
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      const Icon(
                        Icons.lightbulb_outline_rounded,
                        color: AppColors.seaGreen,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Electricity",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.black,
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
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      const Icon(
                        Icons.tv,
                        color: AppColors.seaGreen,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Cable TV",
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: AppColors.black,
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
