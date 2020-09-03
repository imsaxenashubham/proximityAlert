import 'package:covidScanner/models/bottom_navigation_bar.dart';
import 'package:covidScanner/themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:covidScanner/themes/button_style.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:covidScanner/services/authservice.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/HomeScreen";

  Future scanQr() async {
    const String url = "https://noname-23981.firebaseio.com/";
    String cameraScanResult = await scanner.scan();
  }

  @override
  Widget build(BuildContext context) {
    AuthService authProvider = Provider.of(context);
    print(authProvider.user);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "SCAN CODE",
              style: kScreenTitle,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(
                  width * 0.05, height * 0.15, width * 0.05, height * 0.08),
              height: height * 0.25,
              child: Image.asset('assets/images/scan.png'),
            ),
            Text(
              "Start Scanning",
              style: kRegisterTitle.copyWith(fontSize: 28),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "Hold Top of your smartphone\nclose to the QR code",
              style: kguideText,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: ButtonStyle(
                text: "Scan Now",
                goto: () => scanQr(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
