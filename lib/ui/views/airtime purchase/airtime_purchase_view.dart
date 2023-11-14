import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:bytebuddies/ui/common/ui_helpers.dart';
import 'package:bytebuddies/ui/views/airtime%20purchase/widget/quick_topup.dart';
import 'package:bytebuddies/ui/views/widgets/transaction_pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AirtimePurchaseView extends StatefulWidget {
  const AirtimePurchaseView({super.key});

  @override
  State<AirtimePurchaseView> createState() => _AirtimePurchaseViewState();
}

class _AirtimePurchaseViewState extends State<AirtimePurchaseView> {
  var _value = "-1";
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.seaGreen,
        title: Center(
          child: Text(
            'Airtime',
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: sidePadding,
        ),
        children: [
          Column(
            children: [
              SizedBox(height: 30.h),
              DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(8.r),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black),
                          borderRadius: BorderRadius.circular(8.r)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black),
                          borderRadius: BorderRadius.circular(8.r))),
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      value: '-1',
                      child: Text(
                        '-Select Network-',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '-2',
                      child: Text(
                        'MTN',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '-3',
                      child: Text(
                        'AIRTEL',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '-4',
                      child: Text(
                        '9MOBILE',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: '-5',
                      child: Text(
                        'GLO',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                  onChanged: (V) {}),
              SizedBox(height: 30.h),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter phone number',
                      labelStyle: TextStyle(color: AppColors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black),
                          borderRadius: BorderRadius.circular(8.r)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black),
                          borderRadius: BorderRadius.circular(8.r))),
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColors.black,
                  )),
              SizedBox(height: 50.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Quick Top up",
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              const QuickTopupUi(),
              SizedBox(height: 30.h),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: '-Enter amount-',
                      labelStyle: TextStyle(color: AppColors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black),
                          borderRadius: BorderRadius.circular(8.r)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.black),
                          borderRadius: BorderRadius.circular(8.r))),
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColors.black,
                  )),
              SizedBox(height: 30.h),
              TransactionPin(),
            ],
          ),
          SizedBox(height: 100.h),
          ElevatedButton(
            onPressed: () {
              // Add your button onPressed logic here
            },
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: AppColors.seaGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              minimumSize: const Size(150, 50),
            ),
            child: const Text('Confirm'),
          ),
        ],
      )),
    );
  }
}
