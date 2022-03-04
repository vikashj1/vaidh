import 'package:flutter/material.dart';
import 'constant.dart';
import 'subTitle.dart';
import 'emptySection.dart';
import 'home_page.dart';
import 'defaultButton.dart';

class Success extends StatefulWidget {
  Success({ key}) : super(key: key);
  static const id = 'success_page';
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptySection(
            emptyImg: success,
            emptyMsg: 'Successful !!',
          ),
          SubTitle(
            subTitleText: 'Your payment was done successfully',
          ),
          DefaultButton(
            btnText: 'Ok',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => HomePage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
