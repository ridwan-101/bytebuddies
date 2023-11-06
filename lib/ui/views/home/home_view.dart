import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:bytebuddies/ui/common/ui_helpers.dart';
import 'package:bytebuddies/ui/extensions/palette.dart';
import 'package:bytebuddies/ui/views/home/widget/data_purchase.dart';
import 'package:bytebuddies/ui/views/home/widget/services_renderd.dart';
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
    Palette? palette = theme.extension<Palette>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.seaGreen,
        leading: InkWell(
          child: Icon(
            Icons.menu_rounded,
            color: AppColors.white,
          ),
          onTap: () {
            print("menu bar clicked");
          },
        ), //icone menu bar
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
              color: AppColors.seaGreen,
              borderRadius: BorderRadius.circular(20.r),
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
                    color: palette?.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "₦${1000}",
                  style: theme.textTheme.headlineLarge?.copyWith(
                    color: palette?.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          const ServicesRenderd(), //calling purchase point
          SizedBox(height: 30.h),

          Text(
            "Purchase Subscription 🎉",
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
