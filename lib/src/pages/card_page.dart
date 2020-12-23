import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
        _cardTipo1(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo2(),
        SizedBox(height: 30.0),
        _cardTipo2(),
      ]),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Soy el título de esta tarjeta'),
          subtitle: Text(
              'Aquí estamos con al descripcipión para que ustedes tengan idea de como funciona'),
        ),
        Row(
          children: <Widget>[
            FlatButton(onPressed: () {}, child: Text('Ok')),
            FlatButton(onPressed: () {}, child: Text('Cancelar'))
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://d3hnfqimznafg0.cloudfront.net/images/news/ImageForNews_26919_15786618897301054.png'),
                fadeInDuration: Duration(milliseconds: 200),
                height: 300.0,
                fit: BoxFit.cover),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Text('No tengo idea de que poner'))
          ],
        ));

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0))
          ]),
      child: ClipRRect(borderRadius: BorderRadius.circular(30.0), child: card),
    );
  }
}
