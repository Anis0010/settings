import 'package:flutter/material.dart';
import '../payment_widgets/billing_details_button.dart';
import '../payment_widgets/card_details_form.dart';
import '../payment_widgets/pay_now_button.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2D9BB),
        title: Text('Payment'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "You're paying 200.0 EGP",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF17212C),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            CardDetailsForm(),
            SizedBox(height: 20),
            BillingDetailsButton(),
            SizedBox(height: 80),
            PayNowButton(),

          ],
        ),
      ),
    );
  }
}




