import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';


class ValidateScreen extends StatelessWidget {
  const ValidateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/validation cheakout.png',
                          width: 200,
                          height: 190,
                        ),

                        const SizedBox(height: 25),

                        SizedBox(
                          width: double.infinity,
                          child: const Text(
                            'Your Order has been\n accepted',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff181725),
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        SizedBox(
                          width: double.infinity,
                          child: const Text(
                            'Your items has been placcd and is on\n it’s way to being processed',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7C7C7C),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Buttom(
                  text: 'Track Order',
                  backgroundColor: Color(0xff53B175),
                  foregroundColor: Color(0xffFFF9FF),
                  onPressed: () {},
                ),

                const SizedBox(height: 10),
                Buttom(
                  text: 'Back to home',
                  backgroundColor: Colors.transparent,
                  foregroundColor: Color(0xff181725),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}