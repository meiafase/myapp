import 'package:flutter/material.dart';
import 'package:myapp/views/sucesso.dart';
import 'package:myapp/main.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';


class EditarBioPage extends StatelessWidget {
  final newBio = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void addNewBio() async {
      print(newBio);
      var todo = ParseObject('Biografia')
        ..objectId = 'Edix2sFKur'
        ..set('textoBio', newBio.text);
      await todo.save();
      newBio.clear();

    }

    Future<List> listBio() async {
      QueryBuilder<ParseObject> queryTodo =
      QueryBuilder<ParseObject>(ParseObject('Todo'));
      final ParseResponse apiResponse = await queryTodo.query();

      if (apiResponse.success && apiResponse.results != null) {
        return apiResponse.results as List<ParseObject>;
      } else {
        return [];
      }
    }


    return  Scaffold(
      appBar: AppBar(
        title: const Text('Editar Biografia'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.redAccent, Colors.pinkAccent]
              )
            ),
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
                      ),
                      radius: 50.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Alice James",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                      clipBehavior: Clip.antiAlias,
                      color: Colors.white,
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Curtidas",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "5200",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.pinkAccent,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Encontros",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "28.5K",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.pinkAccent,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Seguidores",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "1300",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.pinkAccent,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 6.0),
              child: Column(
                children: [
                  Text(
                    '',
                    style: TextStyle(height: 10),
                  ),
                  TextField(
                    controller: newBio,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Digite sua nova Bio',
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              
            ),
            onPressed: () {
              addNewBio();
            },
            child: Text('Salvar Mudança'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
                padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Colors.redAccent,Colors.pinkAccent]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("Contact me",
                  style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
  
  RaisedButton({required Null Function() onPressed, required RoundedRectangleBorder shape, required double elevation, required EdgeInsets padding, required Ink child}) {}
}