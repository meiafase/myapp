import 'package:flutter/material.dart';



class ConfiguracoesPage extends StatelessWidget {

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
    padding: const EdgeInsets.all(8),
    children: <Widget>[
      Container(
        height: 50,
        color: Colors.red,
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: const Center(child: Text('Privacidade')),
      ),
      Container(
        height: 50,
        color: Colors.red,
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: const Center(child: Text('Distância')),
      ),
      Container(
        height: 50,
        color: Colors.red,
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: const Center(child: Text('Localização atual')),
      ),
      
      Container(
        height: 50,
        color: Colors.red,
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: const Center(child: Text('Mostre-me')),
      ),
      DropdownButton<String>(
      items: <String>['Homem', 'Mulher', 'Ambos'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
        onChanged: (_) {},
      ),
      Container(
        height: 50,
        color: Colors.red,
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: const Center(child: Text('Faixa etária')),
      ),
      Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
      },
    ),
    Container(
        height: 50,
        color: Colors.blueAccent,
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        child: const Center(child: Text('Deletar Conta')),
      ),
    ],
  )
);
}

  void setState(Null Function() param0) {}
}
