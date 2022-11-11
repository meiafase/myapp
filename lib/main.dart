import 'package:flutter/material.dart';

import 'package:myapp/views/curtir.dart';
import 'package:myapp/views/curtidas.dart';
import 'package:myapp/views/configuracoes.dart';
import 'package:myapp/views/editarPerfil.dart';
import 'package:myapp/views/login.dart';


import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main () async {
WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationId = 'VdAmOpZnGh8YaDQ72yW9U2mV7Uw2J4rmxFY7t8Rw';
  final keyClientKey = 'r7SjPAmLWF8uPBwfe3QTCD3kKr6KB3jCSQiGhGdg';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('App Foxy'),
        ),
        drawer: Drawer(
          child: MenuItens(),
        ),
        body: Image.asset(
                'imagens/map.jpeg',
                width: 1000,
                height: 1000,
              ),
      ),
    ),
  );
}

class MenuItens extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const DrawerHeader(
          child: Text('Foxy'),
        ),
        ListTile(
          title: Text('Login'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
        ListTile(
          title: Text('Curtir'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurtirPage()),
            );
          },
        ),
        ListTile(
          title: Text('Curtidas'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurtidasPage()),
            );
          },
        ),
        ListTile(
          title: Text('Configurações'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConfiguracoesPage()),
            );
          },
        ),
        ListTile(
          title: Text('Editar Perfil'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditarPerfilPage()),
            );
          },
        )
      ],
    );
  }
}