import 'package:dynamique_connexion/constant/colors.dart';
import 'package:dynamique_connexion/widgets/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'social_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DelayedAnimation(
                  delay: 900,
                  child: SizedBox(
                    height: 170,
                    child: Image.asset("assets/images/yoga_1.png"),
                  )),
              const SizedBox(
                height: 15,
              ),
              DelayedAnimation(
                  delay: 1300,
                  child: SizedBox(
                    height: 350,
                    child: Image.asset("assets/images/yoga_2.png"),
                  )),
              // const SizedBox(
              //   height: 50,
              // ),
              DelayedAnimation(
                  delay: 1800,
                  child: Container(
                    margin: const EdgeInsets.only(top: 60, bottom: 30),
                    // height: 200,
                    child: Text(
                        "Get fitter, stronger, and embrasse a helthier lifestyle",
                        style: GoogleFonts.combo(
                            color: Colors.grey, fontSize: 16)),
                  )),
              const SizedBox(
                height: 15,
              ),
              DelayedAnimation(
                  delay: 2200,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    // height: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: d_red,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.all(13)),
                      child: Text(
                        "GET STARTED",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SocialPage(),
                            ));
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
