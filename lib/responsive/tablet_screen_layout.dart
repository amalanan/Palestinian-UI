import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/home_page/home_page_screens.dart';

class TabletScreenLayout extends StatelessWidget {
  const TabletScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                // The background image
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'assets/images/17.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 300,
                  top: 30,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _navItem('Home', Colors.green),
                          _navItem('Exhibitions', Colors.white),
                          _navItem('Artists', Colors.white),
                          _navItem('About', Colors.white),
                          _navItem('Contact', Colors.white),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, size: 18),
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF732323),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.5),
                              child: Text(
                                'Sign in',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: SizedBox(child: Container(color: Colors.cyan)),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  left: 160,
                  top: 220,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Gallery of Palestine',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  top: 310,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,

                    child: Text(
                      "Welcome to the Gallery of Palestine, where every artwork \ntells a story of our land’s rich heritage,vibrant culture, and \nenduring spirit.From traditional crafts to contemporary creations,\nwe invite you to explore, connect,and celebrate the beauty and \nresilience of Palestine through art that inspires and unites.",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 120,
                  top: 560,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return HomePageTabletLayout();
                      }));
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
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _navItem(String title, Color color) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: color, fontSize: 16),
        ),
      ),
    ),
  );
}
