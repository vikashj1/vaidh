import 'package:flutter/material.dart';
import 'package:vaidh/success.dart';
import 'constant.dart';
import 'defaultAppBar.dart';
import 'defaultBackButton.dart';
import 'headerLabel.dart';
import 'defaultButton.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);
  static const id = 'payment_page';

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: DefaultAppBar(
        title: 'Payment',
        child: DefaultBackButton(),
      ),
      body: Column(
        children: [
          HeaderLabel(
            headerText: 'Choose your payment method',
          ),
          Expanded(
            child: ListView.separated(
              itemCount: paymentLabels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: kPrimaryColor,
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(() => i = value),
                  ),
                  title: Text(
                    paymentLabels[index],
                    style: TextStyle(color: kDarkColor),
                  ),
                  trailing: Icon(paymentIcons[index], color: kPrimaryColor),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
          // DefaultButton(
          //   btnText: 'Pay',
          //   onPressed: () => Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) => Success(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}