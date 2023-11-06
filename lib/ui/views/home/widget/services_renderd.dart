import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesRenderd extends StatefulWidget {
  const ServicesRenderd({super.key});

  @override
  State<ServicesRenderd> createState() => _ServicesRenderdState();
}

class _ServicesRenderdState extends State<ServicesRenderd> {
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
                print("Fund wallet clicked ");
              },
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  color: AppColors.seaGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Icon(
                        Icons.account_balance_wallet,
                        color: AppColors.white,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Fund Wallet",
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
                print("Agent clicked");
              },
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  color: AppColors.seaGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Icon(
                        Icons.person_3_sharp,
                        color: AppColors.white,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Agent(2k😉)",
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
                print("Refer and earn clicked");
              },
              child: Container(
                height: 120.h,
                width: 120.w,
                decoration: BoxDecoration(
                  color: AppColors.seaGreen,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Icon(
                        Icons.people,
                        color: AppColors.white,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Refer & Earn",
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
        )
      ],
    );
  }
}
