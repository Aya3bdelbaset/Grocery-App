import 'package:flutter/material.dart';

class CartFavItems extends StatefulWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final bool showQuantity;
  final IconData? Icon;

  const CartFavItems({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    this.showQuantity = true,
    this.Icon,
  });

  @override
  State<CartFavItems> createState() => _CartFavItemsState();
}

class _CartFavItemsState extends State<CartFavItems> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.image,
                width: 70,
                height: 70,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff181725),
                            ),
                          ),
                        ),
                        Icon(widget.Icon, color: Color(0xffB3B3B3), size: 25),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.quantity,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        if (widget.showQuantity)
                          Row(
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(
                                  minWidth: 35,
                                  minHeight: 35,
                                ),
                                onPressed: () {
                                  if (quantity > 1) {
                                    setState(() {
                                      quantity--;
                                    });
                                  }
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Color(0xff53B175),
                                  size: 17,
                                ),
                              ),

                              Container(
                                width: 45,
                                height: 45,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  '$quantity',
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),

                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(
                                  minWidth: 35,
                                  minHeight: 35,
                                ),
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

                        const Spacer(),

                        Text(
                          widget.price,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xff181725),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xffE2E2E2B2)),
        ],
      ),
    );
  }
}