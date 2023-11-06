import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Rid-101",
              style: theme.textTheme.titleSmall?.copyWith(
                color: AppColors.black,
              ),
            ),
            accountEmail: Text(
              "abdulazeezridwan004@gmail.com",
              style: theme.textTheme.titleSmall?.copyWith(
                color: AppColors.black,
              ),
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: AppColors.seaGreen,
              child: ClipOval(
                child: Icon(
                  Icons.supervised_user_circle_rounded,
                ),
              ),
            ),
            decoration: BoxDecoration(color: AppColors.white),
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: AppColors.black,
            ),
            title: Text(
              'Home',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu home clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.wifi,
              color: AppColors.black,
            ),
            title: Text(
              'Purchase Data',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu purchase data clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.signal_cellular_alt,
              color: AppColors.black,
            ),
            title: Text(
              'Purchase Airtime',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu Purchase Airtime clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.lightbulb_outline_rounded,
              color: AppColors.black,
            ),
            title: Text(
              'Utilities Payment',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu util pay clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.account_balance_wallet,
              color: AppColors.black,
            ),
            title: Text(
              'Fund Wallet',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu Wallet clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark_sharp,
              color: AppColors.black,
            ),
            title: Text(
              'F.A.Q',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu question mark clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.person_2,
              color: AppColors.black,
            ),
            title: Text(
              'Account',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu Account clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: AppColors.black,
            ),
            title: Text(
              'Settings',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
              ),
            ),
            onTap: () => print("Menu settings clicked"),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: AppColors.red,
            ),
            title: Text(
              'Logout',
              style: theme.textTheme.titleLarge?.copyWith(
                color: AppColors.red,
              ),
            ),
            onTap: () => print("Menu Logout clicked"),
          ),
        ],
      ),
    );
  }
}
