import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_model.dart';
import 'carro.dart';

class CarroPage extends StatefulWidget {

  Carro carro;

  CarroPage(this.carro);

  @override
  _CarroPageState createState() => _CarroPageState();
}

class _CarroPageState extends State<CarroPage> {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  _body() {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                widget.carro.urlFoto ?? "http://www.livroandroid.com.br/livro/carros/esportivos/Renault_Megane_Trophy.png"),
            Text(
              widget.carro.nome ?? "",
              overflow: TextOverflow.ellipsis,),
            RaisedButton(
              child: Text("Voltar"),
              onPressed: _onClickVoltar,
            )
          ],
        )
    );
  }

  void _onClickVoltar() {
    AppModel app = Provider.of<AppModel>(context, listen: false);
    app.pop();
  }
}
