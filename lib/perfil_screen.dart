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
      body:
          GestureDetector(
            onTap: (){
              setState(() {
                selected = !selected;
              });
            },
            child: AnimatedContainer(

              duration: Duration(seconds: 2),
              color: Colors.red,
              width: double.infinity,
              padding: EdgeInsets.all(24),
              height: selected ? 400 : 200,
              child: selected ?
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(radius: 25,),
                          Text("Nome:", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                          Text("Idade:", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                          Text("Altura:", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                          Text("Peso:", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                          Text("Biografia:", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ],

              ) : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Perfil', style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 25,
                      ),
                      Column(
                        children: [
                          Text("Nome:", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                          SizedBox(height: 12,),
                          Text("Descrição", style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.grey
                          ),),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_drop_down_sharp, color: Colors.white,),
                    ],
                  )
                ],
              ),
            ),
          )
    );
  }
}
