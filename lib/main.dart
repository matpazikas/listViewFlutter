import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listview/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}



class _ListaPageState extends State<ListaPage> {
  int contador = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Contatos Favoritos $contador",
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink),
      body: ListView.builder(
          itemCount: contatos.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(contatos[index].imagem),
              ),
              title: Text(contatos[index].nome),
              subtitle: Text(contatos[index].email),
              trailing: IconButton(
                icon: Icon(contatos[index].icone, color: contatos[index].cor,),
                onPressed: () {
                  setState(() {
                    if (contatos[index].icone == Icons.favorite_border) {
                      contatos[index].icone = Icons.favorite;
                      contatos[index].cor = Colors.red;
                      contador++;
                    } else {
                      contatos[index].icone = Icons.favorite_border;
                      contatos[index].cor = Colors.black;
                      contador--;
                    }
                  });
                },
              ),
            );
          }),
    );
  }
}
