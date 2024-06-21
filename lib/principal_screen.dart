import 'package:flutter/material.dart';
import 'package:provaanimations/exercicio_screen.dart';
import 'package:provaanimations/metas_screen.dart';
import 'package:provaanimations/notificacao_screen.dart';
import 'package:provaanimations/perfil_screen.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _body = [
      PerfilScreen(),
      ExercicioScreen(),
      MetasScreen(),
      NotificacaoScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center, color: Colors.white),
            label: "Exercicios",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_sharp, color: Colors.white),
            label: "Metas",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications, color: Colors.white,), label: "Notificações"),
        ],
      ),
      body: _body[_index],
    );
  }
}
