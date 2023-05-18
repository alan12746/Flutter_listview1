import 'package:flutter/material.dart';

class listview2 extends StatelessWidget {
  var games = ["pow", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('listview2'),
        ),
        body: ListView.separated(
          itemCount: games.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(games[index]),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {
                var seleccion = games[index];
                print(seleccion);
              }),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
