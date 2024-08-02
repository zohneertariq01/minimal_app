import 'package:flutter/material.dart';

class BuyButtonWidget extends StatelessWidget {
  const BuyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 40,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black54,
          ),
          child: const Text(
            'BUY TICKET',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}
