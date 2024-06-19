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
            children: [
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                curve: Curves.easeIn,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text("Seja bem vindo!!", style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),),
                      Text("Aproveite da melhor experiencia possivel", style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 400,),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: ElevatedButton(onPressed: (){}, child: Text(
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
