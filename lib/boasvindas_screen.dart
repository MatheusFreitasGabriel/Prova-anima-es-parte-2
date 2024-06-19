import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoasvindasScreen extends StatefulWidget {
  const BoasvindasScreen({super.key});

  @override
  State<BoasvindasScreen> createState() => _BoasvindasScreenState();
}

class _BoasvindasScreenState extends State<BoasvindasScreen> {

  double _opacity = 0;

  void _startOpacity(){
    setState(() {
      _opacity = 1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startOpacity();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                curve: Curves.easeIn,
                child: Text(
                  "Seja bem vindo!",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 400,),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 96, vertical: 16),
                  ),
                    onPressed: (){},
                    child: Text(
                  "Começar",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),

                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
