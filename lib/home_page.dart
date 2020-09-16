import 'package:flutter/material.dart';
import 'botoes_page.dart';
import 'listas_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String avatarPicture = 'https://www.leadsdeconsorcio.com.br/blog/wp-content/uploads/2019/11/04-1.jpg';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Ifruti"),
        backgroundColor: Colors.red,

      ),
      drawer: new Drawer(
        child: new ListView(

          children: <Widget>[
            new ListTile(
              trailing: new Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            new UserAccountsDrawerHeader(accountName: new Text('Elielson Ribeiro'),
                accountEmail: new Text('elielson.ribeiro@gmail.com'),
                currentAccountPicture: new GestureDetector(
                  onTap: () => print('Toque na imagem'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(avatarPicture),
                  ),
                ),
              decoration: new BoxDecoration(
                gradient: new LinearGradient(colors: [const Color(0xFFF50004),const Color(0xFF360001)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    stops: [0.0,1.0],
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            new ListTile(
              title: new Text('Botoes'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context) .pop();
                Navigator.of(context) .push(new MaterialPageRoute(builder: (BuildContext) => new BotoesPage()));
              },
            ),
            new ListTile(
              title: new Text('listas'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context) .pop();
                Navigator.of(context) .push(new MaterialPageRoute(builder: (BuildContext) => new ListaPage()));
              },
            ),
            new Divider(),

          ],
        ),
      ),
      body: new Center(
        child: new Text("ola mundo"),
      ),

    );
  }
}