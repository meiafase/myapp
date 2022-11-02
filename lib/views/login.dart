import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: const [
          // ignore: unnecessary_const
          Text(
            '',
            style: TextStyle(height: 10),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Informe seu E-mail',
              
            ),
          ),
          Text(
            '',
            style: TextStyle(height: 1),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Informe sua senha',
            ),
          ),
          const Text(
            'LOGIN',
            style: TextStyle(height: 5, fontSize: 20),
          ),
          
        ],
      )
    );
  }
}