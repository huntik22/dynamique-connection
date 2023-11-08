import 'package:dynamique_connexion/constant/colors.dart';
// import 'package:dynamique_connexion/views/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/delayed_animation.dart';
import 'login_page.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Page"),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        // actions: [
        //   IconButton(
        //     onPressed: (){},
        //     icon: Icon(Icons.search)),

        // ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DelayedAnimation(
              delay: 900,
              child: SizedBox(
                height: 300,
                child: Image.asset("assets/images/yoga_3.png"),
              ),
            ),
            DelayedAnimation(
                delay: 1200,
                child: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    "Change starts here",
                    style: GoogleFonts.poppins(color: d_red, fontSize: 16),
                  ),
                )),
            DelayedAnimation(
                delay: 1400,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 45),
                  child: Text(
                    "Save your progress to access your personal training program!",
                    style:
                        GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
                  ),
                )),
            DelayedAnimation(
                delay: 2000,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: d_red,
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.mail_outline_outlined,
                                size: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Email",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          )),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const FaIcon(FontAwesomeIcons.facebook),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Facebook",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.png',
                                height: 20,
                              ),
                              // const Icon(Icons.,size: 25, ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Google",
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ],
                          )),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
