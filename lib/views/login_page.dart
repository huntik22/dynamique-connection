import 'package:dynamique_connexion/widgets/delayed_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context
              );
            },
            icon:const Icon(Icons.close,color: Colors.black,)),
      ),
      body: SingleChildScrollView(      
        child:  Container(
          padding:const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DelayedAnimation(
                delay: 900,
                child: Text(
                  "Connect email address", 
                  style: GoogleFonts.poppins(
                    color: d_red,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ),
              const SizedBox(height: 10,),
              DelayedAnimation(
                delay: 1200,
                child: Text(
                  "It's recommended to connect your email address for us to better protect your information.",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),     
                ),
              ),
              const SizedBox(height: 40,),
              const LoginForm(),
              const SizedBox(height: 50,),
              DelayedAnimation(
                delay: 1700,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: d_red,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 110),
                  ),
                  child:  Text(
                    "CONFIRM",
                    textAlign:TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),                  
                  )
                )
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:const EdgeInsets.only(right: 35),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: DelayedAnimation(
                      delay: 2400,
                      child: Text(
                        "SKIP",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ) ,
      ) 
    );
  }
}


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(
        horizontal: 30, vertical: 100
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 1500,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          DelayedAnimation(
            delay: 1500,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}