import 'package:flutter/material.dart';

class NotificacaoScreen extends StatefulWidget {
  const NotificacaoScreen({super.key});

  @override
  State<NotificacaoScreen> createState() => _NotificacaoScreenState();
}

class _NotificacaoScreenState extends State<NotificacaoScreen> {
  List<int> _list = List.generate(10, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          final int item = _list[index];
          final GlobalKey key = GlobalKey();

          return Dismissible(
            key: key,
            background: Container(
              color: Colors.red,
            ),
            onDismissed: (DismissDirection direction) {
              setState(() {
                _list.removeAt(index);
              });

              ScaffoldMessenger.of(context).removeCurrentSnackBar();
            },
            child: ListTile(
              title: Text('Item $item'),
            ),
          );
        },
      ),
    );
  }
}
