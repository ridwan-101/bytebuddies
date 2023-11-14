import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:bytebuddies/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataPurchaseView extends StatefulWidget {
  const DataPurchaseView({Key? key}) : super(key: key);

  @override
  _DataPurchaseViewState createState() => _DataPurchaseViewState();
}

class _DataPurchaseViewState extends State<DataPurchaseView> {
  String _selectedNetwork = '-1';
  String _selectedDataType = '-1';
  String _selectedDataOption = '-1';

  List<String> getDataPlansForNetworkAndOption(String network, String option) {
    switch (network) {
      case '-2': // MTN
        switch (option) {
          case 'SME':
            return [
              '500MB SME = 150.0 1 MONTH',
              '1GB SME = 250.0 1 MONTH',
              '2GB SME = 480.0 1 MONTH',
              '3GB SME = 680.0 1 MONTH',
              '5GB SME = 1,180.0 1 MONTH',
              '10GB SME = 2,280.0 1 MONTH',
            ];
          case 'Gifting':
            return [
              '1GB Gifting = 230.0 7 DAYS',
              '3GB Gifting = 650.0 1 MONTH',
              '1.5GB Gifting = 350.0 1 MONTH',
            ];
          case 'Corporate Gifting':
            return [
              '500MB Corporate Gifting = 130.0 1 MONTH',
              '1GB Corporate Gifting = 250.0 1 MONTH',
              '2GB Corporate Gifting = 480.0 1 MONTH',
              '3GB Corporate Gifting = 700.0 1 MONTH',
              '5GB Corporate Gifting = 1,200.0 1 MONTH',
              '10GB Corporate Gifting = 2,300.0 1 MONTH',
            ];
          default:
            return [];
        }
      case '-3': // Airtel
        switch (option) {
          // case 'SME':
          // return [
          //   'Airtel SME Plan A',
          //   'Airtel SME Plan B',
          //   'Airtel SME Plan C'
          // ];
          case 'Gifting':
            return [
              '100MB GIFTING = 70.0 1 MONTH',
              '300MB GIFTING = 130.0 1 MONTH',
              '500MB GIFTING = 170.0 1 MONTH',
              '1GB GIFTING = 240.0 1 MONTH',
              '2GB GIFTING = 480.0 1 MONTH',
              '5GB GIFTING = 1,180.0 1 MONTH',
              '10GB GIFTING = 2,280.0 1 MONTH',
            ];
          // case 'Corporate Gifting':
          // return [
          //   'Airtel Corporate Gifting Plan P',
          //   'Airtel Corporate Gifting Plan Q',
          //   'Airtel Corporate Gifting Plan R'
          // ];
          default:
            return [];
        }
      case '-4': // 9mobile
        switch (option) {
          // case 'SME':
          //   return [
          //     '9mobile SME Plan A',
          //     '9mobile SME Plan B',
          //     '9mobile SME Plan C'
          //   ];
          // case 'Gifting':
          //   return [
          //     '9mobile Gifting Plan X',
          //     '9mobile Gifting Plan Y',
          //     '9mobile Gifting Plan Z'
          //   ];
          // case 'Corporate Gifting':
          //   return [
          //     '9mobile Corporate Gifting Plan P',
          //     '9mobile Corporate Gifting Plan Q',
          //     '9mobile Corporate Gifting Plan R'
          //   ];
          default:
            return [];
        }
      case '-5': // Glo
        switch (option) {
          // case 'SME':
          //   return ['Glo SME Plan A', 'Glo SME Plan B', 'Glo SME Plan C'];
          case 'Gifting':
            return [
              '200MB GIFTING = 70.0 1 MONTH',
              '500MB GIFTING = 170.0 1 MONTH',
              '1GB GIFTING = 250.0 1 MONTH',
              '2GB GIFTING = 500.0 1 MONTH',
              '3GB GIFTING = 780.0 1 MONTH',
              '5GB GIFTING = 1,280.0 1 MONTH',
              '10GB GIFTING = 2,480.0 1 MONTH',
            ];
          // case 'Corporate Gifting':
          //   return [
          //     'Glo Corporate Gifting Plan P',
          //     'Glo Corporate Gifting Plan Q',
          //     'Glo Corporate Gifting Plan R'
          //   ];
          default:
            return [];
        }
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<String> dataPlans =
        getDataPlansForNetworkAndOption(_selectedNetwork, _selectedDataOption);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.seaGreen,
        title: Center(
          child: Text(
            'Data Purchase',
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
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  value: _selectedNetwork,
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
                  onChanged: (value) {
                    setState(() {
                      _selectedNetwork = value.toString();
                      // Reset selected data type and data option when network changes
                      _selectedDataType = '-1';
                      _selectedDataOption = '-1';
                    });
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(8.r),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  value: _selectedDataOption,
                  items: [
                    DropdownMenuItem(
                      value: '-1',
                      child: Text(
                        '-Select Data Option-',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'SME',
                      child: Text(
                        'SME',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Gifting',
                      child: Text(
                        'Gifting',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Corporate Gifting',
                      child: Text(
                        'Corporate Gifting',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedDataOption = value.toString();
                    });
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(8.r),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  value: _selectedDataType,
                  items: [
                    DropdownMenuItem(
                      value: '-1',
                      child: Text(
                        '-Select Data Type',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    for (String plan in dataPlans)
                      DropdownMenuItem(
                        value: plan,
                        child: Text(
                          plan,
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: AppColors.black,
                          ),
                        ),
                      ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedDataType = value.toString();
                    });
                  },
                ),
                SizedBox(height: 30.h),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter phone number',
                    labelStyle: TextStyle(color: AppColors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 30.h),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '-Amount-',
                    labelStyle: TextStyle(color: AppColors.black),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 200.h),
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
            ),
          ],
        ),
      ),
    );
  }
}
