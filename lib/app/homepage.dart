import 'package:bytebuddies/widget/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:bytebuddies/widget/button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double buttonSpacing = constraints.maxWidth < 600 ? 10.0 : 20.0;

            return Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Image.network(
                            'https://images.unsplash.com/photo-1663605171154-582e5edb8266?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(buttonText: "Sign Up"),
                        SizedBox(width: buttonSpacing),
                        CustomButton(buttonText: "Log in"),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                HomeDashboard()
              ],
            );
          },
        ),
      ),
    );
  }
}
