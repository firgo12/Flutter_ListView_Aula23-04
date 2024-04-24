import 'package:flutter/material.dart';

import 'contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
  ListaPage({super.key});

  List<Contato> contatos = [
    Contato("Ana", "ana@example.com"),
    Contato("João", "joao@example.com"),
    Contato("Valentina", "valentina@example.com"),
    Contato("Cleber", "cleber@example.com"),
    Contato("Enzo", "enzo@example.com"),
    Contato("Pikachu", "pikachu@example.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text ('Contacts')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
          leading: CircleAvatar(child: Text(contatos[index].nomeCompleto[0])),
          title: Text(contatos[index].nomeCompleto),
          subtitle: Text(contatos[index].email),
          );
        },
      ),
    );
  }
}

