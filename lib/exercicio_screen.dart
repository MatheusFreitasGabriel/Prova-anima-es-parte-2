import 'dart:async';

import 'package:flutter/material.dart';

class ExercicioScreen extends StatefulWidget {
  const ExercicioScreen({Key? key}) : super(key: key);

  @override
  State<ExercicioScreen> createState() => _MyAppState();
}

class _MyAppState extends State<ExercicioScreen> {
  List<String> _nomes = [
    "LegPress",
    "Supino deitado",
    "Supino na polia",
    "Biceps",

  ];


  List<Color> cores = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber,
  ];
  int paginaAtual = 0;


  late
  PageController _controller;
  late Timer _timer;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = PageController(initialPage: 0);

    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer){
      if (paginaAtual < _nomes.length -1){
        paginaAtual++;
      }else{
        paginaAtual = 0;
      }

      _controller.animateToPage(paginaAtual, duration: Duration(seconds: 1), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    _controller.dispose();
    super.dispose();

  }

  @override

  Widget build(BuildContext context) {




    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index){
                  setState(() {
                    paginaAtual = index;
                  });
                },
                controller: _controller,
                itemCount: _nomes.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    child: Container(
                      decoration: BoxDecoration(
                        color: cores[index],
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          _nomes[index],
                          style: const  TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_nomes.length, (index){
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  width: paginaAtual == index ? 20 : 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: paginaAtual == index ? cores[index]: Colors.grey.withOpacity(0.5),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
