import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotoesPage extends StatefulWidget {
  @override
  _BotoesPageState createState() => new _BotoesPageState();
}

class _BotoesPageState extends State<BotoesPage>{
  ShapeBorder _buttonShape;
  @override
  Widget build(BuildContext context) {
    final ButtonThemeData buttonTheme = ButtonTheme.of(context).copyWith(
      shape: _buttonShape
  );
    return new Scaffold(
      body: new DefaultTabController(length: 5, child: new Scaffold(
        appBar: new AppBar(
          bottom: new TabBar(
              tabs: [
                new Tab(text: 'Raised'),
                new Tab(text: 'Flat'),
                new Tab(text: 'Outiline'),
                new Tab(text: 'Icon'),
                new Tab(text: 'Action'),
              ]
          ),
          title: new Text('Botoes'),
          backgroundColor: Colors.red,
        ),
        body: new TabBarView(children: [

          new ButtonTheme.fromButtonThemeData(
            data: buttonTheme,
            child: buildRaisedButoon('Botoes Raised'),
          ),
          new ButtonTheme.fromButtonThemeData(
            data:  buttonTheme,
            child: buildFlatButoon('Botao flat'),
          ),
          new ButtonTheme.fromButtonThemeData(
            data:  buttonTheme,
            child: buildOutlineButoon('Botao Outiline'),
          ),
          new ButtonTheme.fromButtonThemeData(
            data:  buttonTheme,
            child: buildIconButoon('Botao Icon'),
          ),
          new ButtonTheme.fromButtonThemeData(
            data:  buttonTheme,
            child: buildActionButton(),
          ),
        ]
        ),
      )
      ),
    );
  }
}
Widget buildRaisedButoon(title){
  return
      new Align(
        alignment: const Alignment(0.0, -0.2),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              new Text(title,
                textAlign: TextAlign.center,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new RaisedButton(
                  child: const Text('Botao'),
                  onPressed: (){

                  },
            ),
                const RaisedButton(
                  child: const Text('Desabilitado'),
                  onPressed: null,
                ),
              ],
            ),
            new ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new RaisedButton.icon(
                  icon: const Icon(Icons.edit),
                  label: const Icon(Icons.add, size: 20,  ),
                    onPressed: (){

                    },
                ),
                new RaisedButton.icon(
                  icon: const Icon(Icons.add, size: 20),
                  label: const Text('Desabilitado'),
                  onPressed: null,
                ),
              ],
            ),
          ],
        ),
      );
}
Widget buildFlatButoon(title){
  return Align(
    alignment: const Alignment(0.0, 0.2),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
              child: Text('Botao flat'),
              onPressed: (){

              },
            ),
            FlatButton(
              child: Text('Botao flat Desabilitado'),
              onPressed: (null),
            ),
          ],
        ),
    ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FlatButton.icon(
          icon: const Icon(Icons.add_circle_outline, size: 20),
          label: const Text(''),
          onPressed: (){

          },
        ),
            FlatButton.icon(
              icon: const Icon(Icons.add_circle_outline, size: 20),
              label: const Text(''),
              onPressed: (null),
            )
      ],
    ),
      ],
    ),
  );
}
Widget buildOutlineButoon(title){
  return Align(
    alignment: const Alignment(0.0, 0.2),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            OutlineButton(
              child: Text('Botao Outline'),
              onPressed: (){

              },
            ),
            OutlineButton(
              child: Text('Botao Outline Desabilitado'),
              onPressed: (null),
            ),
          ],
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            OutlineButton.icon(
              icon: const Icon(Icons.add_circle_outline, size: 20),
              label: const Text(''),
              onPressed: (){

              },
            ),
            OutlineButton.icon(
              icon: const Icon(Icons.add_circle_outline, size: 20),
              label: const Text(''),
              onPressed: (null),
            )
          ],
        ),
      ],
    ),
  );
}
Widget buildIconButoon(title){
  return Align(
    alignment: const Alignment(0.0, 0.2),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.threed_rotation, size: 20),
              onPressed: (){

              },
            ),
            IconButton(
            icon: const Icon(Icons.assignment, size: 20),

              onPressed: (null),
            ),
          ],
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.thumb_up, size: 20),

              onPressed: (){

              },
            ),
          ],
        ),
      ],
    ),
  );
}
Widget buildActionButton(){
  return Align(
    alignment: const Alignment(0.0, -0.2),
    child: FloatingActionButton(
    child: const Icon(Icons.add),

        onPressed: (){

       },
    ),
  );
}