import 'package:flutter/material.dart';
import 'package:vaidh/doctor_details_page.dart';
import 'package:vaidh/payment.dart';
import 'package:vaidh/success.dart';
import 'home_page.dart';
void main() {
  runApp(Vaidh());
}

class Vaidh extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff053F5E),
      ),
      // home: HomePage(),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        DoctorDetailPage.id: (context) => DoctorDetailPage(),
        Payment.id: (context) => Payment(),
        Success.id: (context) => Success(),
      },
    );
  }
}
