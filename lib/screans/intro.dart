import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerystore/screans/Homescrean.dart';

class introScrean extends StatelessWidget {
  const introScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 80, right: 80, top: 60, bottom: 60),
            child: Image.asset(
              'lib/images/avocado.png',
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('we deliver groceries at your doorstep',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          //sub title
          Text(
            'Fresh item everyday',
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(
            height: 40,
          ),

          // button

          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return HomeScrean();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}