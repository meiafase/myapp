import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CurtidasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curtidas'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.redAccent,
        child: Column(
        children: <Widget>[
          Expanded(
              child: FutureBuilder<List<ParseObject>>(
                  future: getTodo(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                        return Center(
                          child: Container(
                              width: 100,
                              height: 100,
                              child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),)),
                        );
                      default:
                        if (!snapshot.hasData) {
                          return Center(
                            child: Text("No Data..."),
                          );
                        } else {
                          return ListView.builder(
                              padding: EdgeInsets.only(top: 10.0),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                final varTodo = snapshot.data![index];
                                final nome = varTodo.get<String>('nome')!;
                                return Card(
                                elevation: 5,
                                child: ListTile(
                                  leading: Icon(Icons.heart_broken_sharp, color: Colors.redAccent,),
                                  title: Text(nome,
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                  ),
                                ),
                                  subtitle: Text('Curtiu Você'),
                                ),
                              );
                              });
                        }
                    }
                  }))
        ],
      ),
      )
    );
  }
}

Future<List<ParseObject>> getTodo() async {
  QueryBuilder<ParseObject> queryTodo = QueryBuilder<ParseObject>(ParseObject('CurtidasRecebidas'));
  final ParseResponse apiResponse = await queryTodo.query();

  if (apiResponse.success && apiResponse.results != null) {
    return apiResponse.results as List<ParseObject>;
  } else {
    return [];
  }
}
