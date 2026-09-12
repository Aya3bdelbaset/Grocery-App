import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/validate_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/check_options.dart';


class CheckBottomSheet extends StatelessWidget {
  const CheckBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Checkout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),

          Divider(color: Color(0xffE2E2E2), thickness: 1.20),
          CheakoutOptions(subTille: 'Select Method', title: 'Delivery'),
          Divider(color: Color(0xffE2E2E2), thickness: 1.20),
          CheakoutOptions(subTille: 'Select Method', title: 'Pament'),
          Divider(color: Color(0xffE2E2E2), thickness: 1.20),
          CheakoutOptions(subTille: 'Pick discount', title: 'Promo Code'),
          Divider(color: Color(0xffE2E2E2), thickness: 1.20),
          CheakoutOptions(subTille: '\$13.97', title: 'Total Cost'),
          Divider(color: Color(0xffE2E2E2), thickness: 1.20),

          const Text(
            'By placing an order you agree to our',
            style: TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
          ),

          Row(
            children: [
              const Text(
                'Terms ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'And ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7C7C7C),
                ),
              ),
              Text(
                'Conditions',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          Buttom(
            text: 'Place Order',
            backgroundColor: Color(0xff53B175),
            foregroundColor: Color(0xffFFF9FF),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ValidateScreen()),
              );
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}