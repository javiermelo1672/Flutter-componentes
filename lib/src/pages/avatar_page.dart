import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2018/08/fotos-perfil-whatsapp_16.jpg?itok=fl2H3Opv'),
                radius: 20.0,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                    child: Text('Sl'), backgroundColor: Colors.brown))
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage(
                'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2018/08/fotos-perfil-whatsapp_16.jpg?itok=fl2H3Opv'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
