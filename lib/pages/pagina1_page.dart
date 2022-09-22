// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';

import 'package:estados/services/usuario_service.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina1'),
      ),
      body: StreamBuilder(
        stream: usuarioServiece.usuarioStream,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
          return snapshot.hasData
              ? InformacionUsuario(snapshot.data)
              : Center(
                  child: Text('No hay informacion del usuario'),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario? usuario;

  const InformacionUsuario(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(color: Colors.black, height: 0.1),
          ListTile(title: Text('Nombre: ${usuario?.nombre}')),
          ListTile(title: Text('Edad: ${usuario?.edad}')),
          Text(
            'Profeciones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(color: Colors.black, height: 0.4),
          ListTile(title: Text('Profesion 1: ')),
          ListTile(title: Text('Profesion 2: ')),
          ListTile(title: Text('Profesion 3: ')),
        ],
      ),
    );
  }
}
