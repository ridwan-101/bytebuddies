import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:bytebuddies/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';

class FundWalletView extends StatefulWidget {
  const FundWalletView({super.key});

  @override
  State<FundWalletView> createState() => _FundWalletViewState();
}

class _FundWalletViewState extends State<FundWalletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.seaGreen,
        leading: const Icon(Icons.arrow_circle_left_outlined),
        title: Center(
          child: Text(
            'Fund wallet',
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
              ListTile(
                leading: Image.asset("name"),
              )
            ],
          )
        ],
      )),
    );
  }
}
