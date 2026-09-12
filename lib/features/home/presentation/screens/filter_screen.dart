import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/app_bar_text.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/filter_check_box.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool eggs = false;
  bool noodles = false;
  bool chips = false;
  bool fastFood = false;

  bool individualCollection = false;
  bool cocaCola = false;
  bool ifad = false;
  bool kaziFarmas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            AppBarText(
              title: 'Filters',
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close_rounded,
                  size: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
                      const SizedBox(height: 25),
                      FilterCheckBox(
                        title: 'Eggs',
                        value: eggs,
                        onChanged: (value) {
                          setState(() {
                            eggs = value;
                          });
                        },
                      ),

                      FilterCheckBox(
                        title: 'Noodles & Pasta',
                        value: noodles,
                        onChanged: (value) {
                          setState(() {
                            noodles = value;
                          });
                        },
                      ),

                      FilterCheckBox(
                        title: 'Chips & Crisps',
                        value: chips,
                        onChanged: (value) {
                          setState(() {
                            chips = value;
                          });
                        },
                      ),

                      FilterCheckBox(
                        title: 'Fast Food',
                        value: fastFood,
                        onChanged: (value) {
                          setState(() {
                            fastFood = value;
                          });
                        },
                      ),

                      const SizedBox(height: 25),

                      // Brand
                      const Text(
                        'Brand',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),

                      const SizedBox(height: 15),

                      FilterCheckBox(
                        title: 'Individual Collection',
                        value: individualCollection,
                        onChanged: (value) {
                          setState(() {
                            individualCollection = value;
                          });
                        },
                      ),

                      FilterCheckBox(
                        title: 'CocCola',
                        value: cocaCola,
                        onChanged: (value) {
                          setState(() {
                            cocaCola = value;
                          });
                        },
                      ),

                      FilterCheckBox(
                        title: 'Ifad',
                        value: ifad,
                        onChanged: (value) {
                          setState(() {
                            ifad = value;
                          });
                        },
                      ),

                      FilterCheckBox(
                        title: 'Kazi Farmas',
                        value: kaziFarmas,
                        onChanged: (value) {
                          setState(() {
                            kaziFarmas = value;
                          });
                        },
                      ),
                      Spacer(),
                      Buttom(
                        text: 'Apply Filter',
                        backgroundColor: const Color(0xff53B175),
                        foregroundColor: Color(0xffFFF9FF),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}