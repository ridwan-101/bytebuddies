import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:bytebuddies/ui/views/airtime%20purchase/airtime_purchase_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickTopupUi extends StatefulWidget {
  const QuickTopupUi({super.key});

  @override
  State<QuickTopupUi> createState() => _QuickTopupUiState();
}

class _QuickTopupUiState extends State<QuickTopupUi> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    "₦${100}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    "₦${200}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    "₦${500}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.black,
                    ),
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
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    "₦${1000}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    "₦${2000}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: AppColors.seaGreen,
                    width: 2.0.w,
                  ),
                ),
                child: Center(
                  child: Text(
                    "₦${5000}",
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.black,
                    ),
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
