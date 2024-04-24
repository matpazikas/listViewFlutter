
import 'package:flutter/material.dart';
import 'package:listview/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
  const ListaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview builder", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile (
            leading: CircleAvatar(child: Text(contatos[index].nome.substring(0, 1),)),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
          );
        }),
    );
  }
}

