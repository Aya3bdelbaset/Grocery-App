import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/authentication/presentation/screens/login_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';


class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/onbording.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.11),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/white carrot.png', width: 48, height: 56),

                const SizedBox(height: 35),

                const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const Text(
                  'to our store',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Ger your groceries as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xffFCFCFC), fontSize: 16),
                ),

                const SizedBox(height: 25),

                Buttom(
                  text: 'Get Started',
                  backgroundColor: Color(0xff53B175),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),

                const SizedBox(height: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}