import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:bytebuddies/ui/views/home/home_view.dart';
import 'package:bytebuddies/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';

class BottomBarMenu extends StatefulWidget {
  const BottomBarMenu({super.key});

  @override
  State<BottomBarMenu> createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu> {
  int index = 0;
  final Screens = [
    const HomeView(),
    const Wallet(),
    const Chatbot(),
    const Notifier()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: AppColors.seaGreen,
              labelTextStyle: MaterialStateProperty.all(
                  const TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide),
          child: NavigationBar(
            height: 60,
            selectedIndex: index,
            backgroundColor: AppColors.white,
            animationDuration: const Duration(seconds: 2),
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                ),
                selectedIcon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                  icon: Icon(Icons.account_balance_wallet),
                  selectedIcon: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                  ),
                  label: 'Wallet'),
              NavigationDestination(
                  icon: Icon(Icons.support_agent_sharp),
                  selectedIcon: Icon(
                    Icons.support_agent_sharp,
                    color: Colors.white,
                  ),
                  label: 'Support'),
              NavigationDestination(
                  icon: Icon(Icons.notifications),
                  selectedIcon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  label: 'Settings'),
            ],
          ),
        ),
      );
}
