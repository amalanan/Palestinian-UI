import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/screens.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Gallery of Palestine',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.red, fontSize: 26),
                    ),
                  ),
                ),
              ),

            Image.asset('assets/images/18.jpeg', fit: BoxFit.contain),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return HomePage();
                    } ));

                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF23733A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8,
                    ),
                    child: Text(
                      'Explore Now',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
