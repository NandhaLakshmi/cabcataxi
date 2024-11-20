import 'package:demo/style/demo.dart';
import 'package:demo/style/desktop_body.dart';
import 'package:demo/style/mobile_body.dart';
import 'package:demo/style/otp_screen.dart';
import 'package:demo/style/owner_signup.dart';
import 'package:demo/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/style/loginform.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child:Cabca(),
    ),
  );
}

class Cabca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: ResponsiveLayout(mobileBody: MobileBody(),desktopBody: DesktopBody(),)
    );
  }
}
