import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MetasScreen extends StatefulWidget {
  const MetasScreen({super.key});

  @override
  State<MetasScreen> createState() => _MetasScreenState();
}

class _MetasScreenState extends State<MetasScreen> with SingleTickerProviderStateMixin{
  final List<int> _list = List.generate(10, (index) => index);
  final Duration _duration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Metas', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24),),
      ),
      body: ListView.builder(
        itemCount: _list.length,

        itemBuilder: (context, index){
          return AnimatedTile(index: index, duration: _duration, child: ListTile(
            title: Text('Exercicio - ${index}', style: GoogleFonts.montserrat(fontSize: 14),),
            onTap: (){},
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 24,),
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          ));
        },
      )
    );
  }
}

class AnimatedTile extends StatefulWidget {
  AnimatedTile({super.key, required this.index, required this.duration, required this.child});

  final int index;
  final Duration duration;
  final Widget child;

  @override
  State<AnimatedTile> createState() => _AnimatedTileState();
}

class _AnimatedTileState extends State<AnimatedTile> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(_controller);
    
    Future.delayed(Duration(milliseconds: widget.index * 300), (){
      if(mounted){
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _opacity,
    child: widget.child,);
  }
}

