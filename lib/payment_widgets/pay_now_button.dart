import 'package:flutter/material.dart';

class PayNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 30),
          backgroundColor: Color(0xFFF2D9BB),
        ),
        onPressed: () {},
        child: Text(
          'PAY NOW',
          style: TextStyle(
            color: Color(0xFF17212C),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
