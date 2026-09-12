import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/app_bar_text.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/cart_fav.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/check_bottom_sheet.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.70),

          child: Column(
            children: [
              const SizedBox(height: 20),

              AppBarText(title: 'My Cart'),

              const SizedBox(height: 10),

              const Divider(color: Color(0xffE2E2E2B2)),

              const SizedBox(height: 10),

              Expanded(
                child: ListView(
                  children: [
                    CartFavItems(
                      image: 'assets/images/pepper.png',
                      name: 'Bell Pepper Red',
                      quantity: '1kg, Price',
                      price: '\$4.99',
                      Icon: Icons.close_rounded,
                    ),

                    CartFavItems(
                      image: 'assets/images/egg.png',
                      name: 'Egg Chicken Red',
                      quantity: '4pcs, Price',
                      price: '\$1.99',
                      Icon: Icons.close_rounded,
                    ),

                    CartFavItems(
                      image: 'assets/images/banana.png',
                      name: 'Organic Bananas',
                      quantity: '12kg, Price',
                      price: '\$3.00',
                      Icon: Icons.close_rounded,
                    ),

                    CartFavItems(
                      image: 'assets/images/pngfuel.png',
                      name: 'Ginger',
                      quantity: '250gm, Price',
                      price: '\$2.99',
                      Icon: Icons.close_rounded,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Buttom(
                text: 'Go to Checkout',
                price: '\$12.96',
                backgroundColor: const Color(0xff53B175),
                foregroundColor: const Color(0xffFCFCFC),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return const CheckBottomSheet();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}