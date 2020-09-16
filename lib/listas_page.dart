import 'package:flutter/material.dart';

enum _MaterialListType {
  umaLinha,
  umaLinhaComAvatar,
  duasLinas,
  tresLinhas,
}

class ListaPage extends StatefulWidget {

  @override
  _ListasPageState createState() => new _ListasPageState();
}


class _ListasPageState extends State<ListaPage>{
  static final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> itens = <String>[
  'A','B','C','D','E','F','G','I','J','K','L','M','O','P','Q','R','S','T','U','V','W','X','Y','Z'
  ];

  bool _ordemReversa = false;

  @override
  Widget build(BuildContext context) {

    Iterable<Widget> listTiles = itens.map((String item) => buildListTile(context, item));

    return Scaffold(
      appBar:  AppBar(
        title:  Text('Listas'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.sort_by_alpha),
            onPressed: (){
              setState(() {
                _ordemReversa = !_ordemReversa;
                itens.sort((String a, String b)=> _ordemReversa ? b.compareTo(a) : a.compareTo(b));
              });
            },
            ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: (){

            }
          ),
        ],
      ),
      body: Scrollbar(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          children: listTiles.toList(),
        ),
      ),
    );
  }
}
Widget buildListTile(BuildContext context, String item){
  Widget segundo = const Text('Texto secundario');
  return MergeSemantics(
    child: ListTile(
      title: Text('este item reprezenta a letra $item.'),
      subtitle: segundo,
    ),
  );

}