import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({super.key});

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selected ? Column() :Column(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 2),
            height: selected ? 400 : 200,
            width: double.infinity,
            padding: EdgeInsets.all(24),
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Perfil', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                    ),
                    Column(
                      children: [
                        Text('Nome', style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),),
                        Text('Descrição', style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.grey
                        ),)
                      ],
                    )
                  ],
                ),
                Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
