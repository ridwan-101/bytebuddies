import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:bytebuddies/ui/common/ui_helpers.dart';
import 'package:bytebuddies/ui/views/home/widget/data_purchase.dart';
import 'package:bytebuddies/ui/views/home/widget/services_renderd.dart';
import 'package:bytebuddies/ui/views/nav%20bar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.seaGreen,
        title: Center(
          child: Text(
            'Bytebudies',
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
        ), //app bar text
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: sidePadding,
        ),
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Welcome Rid-101 😜 ",
            style: theme.textTheme.headlineSmall?.copyWith(
              color: AppColors.black,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 110.h,
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 16.w,
              top: 16.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: AppColors.seaGreen,
                width: 2.0.w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Wallet Balance',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColors.black,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "₦${1000}",
                  style: theme.textTheme.headlineLarge?.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          const ServicesRenderd(), //calling purchase point
          SizedBox(height: 30.h),

          Text(
            "Purchase cheap subscription 🎉",
            style: theme.textTheme.headlineSmall?.copyWith(
              color: AppColors.black,
            ),
          ),
          SizedBox(height: 30.h),
          const DataPurchaseUi(),
        ],
      )),
    );
  }
}
