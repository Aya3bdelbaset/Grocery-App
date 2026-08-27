import 'package:flutter/material.dart';

import 'package:groceries_app_ui/constants/app_colors.dart';
import 'package:groceries_app_ui/features/home/presentation/models/product_model.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/account.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/category_card.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/home_bottom_nav.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/location_header.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/product_card.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/search_bar.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/section_header.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<ProductModel> exclusiveProducts = [
    ProductModel(
      name: 'Organic Bananas',
      quantity: '7pcs, Priceg',
      price: '\$4.99',
      image: 'assets/images/banana.png',
    ),
    ProductModel(
      name: 'Red Apple',
      quantity: '1kg, Priceg',
      price: '\$4.99',
      image: 'assets/images/apple.png',
    ),
  ];

  final List<ProductModel> bestSellingProducts = [
    ProductModel(
      name: 'Bell Pepper',
      quantity: '1kg, Priceg',
      price: '\$4.99',
      image: 'assets/images/pepper.png',
    ),
    ProductModel(
      name: 'pngfuel',
      quantity: '1kg, Priceg',
      price: '\$4.99',
      image: 'assets/images/pngfuel.png',
    ),
  ];

  final List<ProductModel> groceryProducts = [
    ProductModel(
      name: 'Beef Bone',
      quantity: '1kg, Priceg',
      price: '\$4.99',
      image: 'assets/images/beef.png',
    ),
    ProductModel(
      name: 'Broiler Chicken',
      quantity: '1kg, Priceg',
      price: '\$4.99',
      image: 'assets/images/chicken.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/carrot.png',
                  height: 40,
                ),
              ),

              const SizedBox(height: 15),

              const LocationWidget(),

              const SizedBox(height: 20),

              const SearchBarWidget(),

              const SizedBox(height: 20),

              const CustomCarouselSlider(),

              const SizedBox(height: 25),

              const SectionHeader(
                title: 'Exclusive Offer',
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 230,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1000,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                  itemBuilder: (context, index) {
                    final product =
                        exclusiveProducts[index % exclusiveProducts.length];

                    return ProductCard(
                      product: product,
                    );
                  },
                ),
              ),

              const SizedBox(height: 25),

              const SectionHeader(
                title: 'Best Selling',
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 230,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1000,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                  itemBuilder: (context, index) {
                    final product =
                        bestSellingProducts[index % bestSellingProducts.length];

                    return ProductCard(
                      product: product,
                    );
                  },
                ),
              ),

              const SizedBox(height: 25),

              const SectionHeader(
                title: 'Groceries',
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    GroceryCategoryCard(
                      title: 'Pulses',
                      image: 'assets/images/pulses.png',
                      color: AppColors.categoryOrange,
                    ),

                    SizedBox(width: 12),

                    GroceryCategoryCard(
                      title: 'Rice',
                      image: 'assets/images/rice.png',
                      color: AppColors.categoryGreen,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 230,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1000,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                  itemBuilder: (context, index) {
                    final product =
                        groceryProducts[index % groceryProducts.length];

                    return ProductCard(
                      product: product,
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,

        onTap: (index) {
          if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AccountScreen(),
              ),
            );
          } else {
            setState(() {
              currentIndex = index;
            });
          }
        },
      ),
    );
  }
}