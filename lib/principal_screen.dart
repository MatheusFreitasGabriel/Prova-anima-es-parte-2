import 'package:flutter/material.dart';
import 'package:provaanimations/exercicio_screen.dart';
import 'package:provaanimations/metas_screen.dart';
import 'package:provaanimations/perfil_screen.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    int _index = 0;
    List<Widget> _body = [
      PerfilScreen(),
      ExercicioScreen(),
      MetasScreen(),

    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white,),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center, color: Colors.white,),
            label: "Exercicios",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_sharp, color: Colors.white,),
            label: "Metas",
          ),
        ],
      ),
      body: _body[_index],
    );
  }
}
