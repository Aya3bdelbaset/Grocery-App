import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/app_bar_text.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/cart_fav.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

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

              AppBarText(title: 'Favourite'),
              const SizedBox(height: 10),

              const Divider(color: Color(0xffE2E2E2B2)),

              Expanded(
                child: ListView(
                  children: [
                    CartFavItems(
                      image: 'assets/images/Sprite Can.png',
                      name: 'Sprite Can',
                      quantity: '325ml, Price',
                      price: '\$1.50',
                      showQuantity: false,
                      Icon: Icons.chevron_right,
                    ),

                    CartFavItems(
                      image: 'assets/images/Diet Coke.png',
                      name: 'Diet Coke',
                      quantity: '355ml, Price',
                      price: '\$1.99',
                      showQuantity: false,
                      Icon: Icons.chevron_right,
                    ),

                    CartFavItems(
                      image: 'assets/images/juice.png',
                      name: 'Apple & Grape Juice',
                      quantity: '2L, Price',
                      price: '\$15.50',
                      showQuantity: false,
                      Icon: Icons.chevron_right,
                    ),

                    CartFavItems(
                      image: 'assets/images/Coca Cola Can.png',
                      name: 'Coca Cola Can',
                      quantity: '325ml, Price',
                      price: '\$4.99',
                      showQuantity: false,
                      Icon: Icons.chevron_right,
                    ),

                    CartFavItems(
                      image: 'assets/images/Pepsi Can.png',
                      name: 'Pepsi Can',
                      quantity: '330ml, Price',
                      price: '\$4.99',
                      showQuantity: false,
                      Icon: Icons.chevron_right,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Buttom(
                text: 'Add All To Cart',
                backgroundColor: const Color(0xff53B175),
                foregroundColor: const Color(0xffFCFCFC),
                onPressed: () {},
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}