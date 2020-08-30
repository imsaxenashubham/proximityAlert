import 'package:flutter/material.dart';
import 'package:covidScanner/themes/constants.dart';

class NotificationScreen extends StatelessWidget {
  final id = "NotificationScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                "Notifications",
                style: kScreenTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
