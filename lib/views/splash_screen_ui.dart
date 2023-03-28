import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me_travel_app/views/login_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  
  
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginUI(),
          ),
        );
      },
    );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              'บันทึกการเดินทาง',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.08,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'Created by : 6452410007\nTinnapat Suwannamai',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.04,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}