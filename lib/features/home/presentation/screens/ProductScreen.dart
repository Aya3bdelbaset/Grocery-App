import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  final String name;
  final String price;
  final String image;
  final String weight;

  const ProductScreen({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.weight,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ios_share_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Product Image + Smooth Dots
            Container(
              height: 290,
              width: double.infinity,
              color: const Color(0xffF5F5F5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 240,
                    child: Image.asset(
                      'assets/images/applee.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 8),

                  SmoothPageIndicator(
                    controller: PageController(),
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 6,
                      dotWidth: 6,
                      activeDotColor: Color(0xff53B175),
                      dotColor: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            // Product Information
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Name + Favorite
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  // Weight
                  Text(
                    widget.weight,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Quantity + Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (quantity > 1) {
                                setState(() {
                                  quantity--;
                                });
                              }
                            },
                            icon: const Icon(
                              Icons.remove,
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              quantity.toString(),
                            ),
                          ),

                          IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Color(0xff53B175),
                            ),
                          ),
                        ],
                      ),

                      Text(
                        widget.price,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const Divider(height: 30),

                  // Product Detail
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,

                    title: const Text(
                      "Product Detail",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    trailing: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),

                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: Text(
                          "Apples Are Nutritious. Apples May Be Good For Weight Loss. "
                          "Apples May Be Good For Your Heart. As Part Of A Healthy "
                          "And Varied Diet.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Divider(height: 1),

                  // Nutritions
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,

                    title: const Text(
                      "Nutritions",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    trailing: const Icon(
                      Icons.chevron_right,
                    ),

                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: Text(
                          "Calories: 52 kcal\n"
                          "Carbohydrates: 14g\n"
                          "Protein: 0.3g\n"
                          "Fat: 0.2g",
                          style: TextStyle(
                            color: Colors.grey,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Divider(height: 1),

                  // Review
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,

                    title: const Text(
                      "Review",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18,
                        ),
                        Icon(
                          Icons.chevron_right,
                        ),
                      ],
                    ),

                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 15,
                        ),
                        child: Text(
                          "Very fresh and delicious!",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Add To Basket
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff53B175),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Add To Basket",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}