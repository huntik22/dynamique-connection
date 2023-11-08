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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical:50, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DelayedAnimation(
                delay: 1500,
                child: SizedBox(
                  height: 170,
                  child: Image.asset("assets/images/yoga_1.png"),
                )),
            const SizedBox(
              height: 15,
            ),
            DelayedAnimation(
                delay: 2500,
                child: SizedBox(
                  height: 350,
                  child: Image.asset("assets/images/yoga_2.png"),
                )),
            // const SizedBox(
            //   height: 50,
            // ),
            DelayedAnimation(
              delay: 3500,
              child: Container(
                margin: EdgeInsets.only(
                  top: 60, bottom: 30
                ),
                // height: 200,
                child: Text(
                    "Get fitter, stronger, and embrasse a helthier lifestyle",
                    style: GoogleFonts.combo(
                        color: Colors.grey, fontSize: 16)),
              )
            ),
            const SizedBox(height: 15,),
            DelayedAnimation(
                delay: 4500,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  // height: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: d_red,
                        shape:const StadiumBorder(),
                        padding: const EdgeInsets.all(13)),
                    child:  Text("GET STARTED",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16
                      ),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SocialPage(),
                        )
                      );
                    },
                  ),
                )
              ),
          ],
        ),
      ),
    );
  }
}
