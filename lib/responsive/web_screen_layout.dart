import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.brown.shade300,
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
                  left: 600,
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
                            icon: Icon(Icons.search, size: 24),
                            color: Colors.white,
                          ),
                          SizedBox(width: 25),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF732323),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                'Sign in',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
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
                  left: 200,
                  top: 220,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Gallery of Palestine',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 220,
                  top: 310,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,

                    child: Text(
                      "Welcome to the Gallery of Palestine, where every artwork \ntells a story of our land’s rich heritage,vibrant culture, and enduring spirit.\nFrom traditional crafts to contemporary creations,\nwe invite you to explore, connect,and celebrate the beauty and resilience of\nPalestine through art that inspires and unites.",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 150,
                  top: 590,
                  child: TextButton(
                    onPressed: () {},
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

  Widget _navItem(String title, Color color) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: color, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
