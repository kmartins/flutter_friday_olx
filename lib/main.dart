import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:olx/item_lista_produto.dart';
import 'package:olx/tab_button.dart';

import 'anuncio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff6E0AD6),
        accentColor: Colors.deepOrange,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Anuncio> lista = List<Anuncio>();
    lista.add(Anuncio(
        nome: 'Carro 1',
        valor: 'R\$50.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/78/786909093093512.jpg"));
    lista.add(Anuncio(
        nome: 'Carro 2',
        valor: 'R\$70.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/13/131905030435158.jpg"));
    lista.add(Anuncio(
        nome: 'Carro 3',
        valor: 'R\$85.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/58/581919085444446.jpg"));
    lista.add(Anuncio(
        nome: 'Carro 4',
        valor: 'R\$25.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/83/833914098689663.jpg"));
    lista.add(Anuncio(
        nome: 'Carro 5',
        valor: 'R\$20.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/37/375929038355681.jpg"));
    lista.add(Anuncio(
        nome: 'Carro 6',
        valor: 'R\$51.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/39/390931036559053.jpg"));
    lista.add(Anuncio(
        nome: 'Carro 7',
        valor: 'R\$60.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/88/887918094370096.jpg"));
    lista.add(Anuncio(
        nome: 'Carro 8',
        valor: 'R\$100.000,00',
        data: '18 de outubro 18:39, Colinas da Anhanguera',
        image: "https://img.olx.com.br/images/55/555916085011110.jpg"));

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.dehaze),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.camera_alt),
        label: Text("Anunciar agora"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              TabButton(
                titulo: "DDD 11 - São Paulo e Região",
              ),
              TabButton(
                titulo: "Categoria",
              ),
              TabButton(
                titulo: "Filtros",
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 72),
              itemCount: lista.length,
              itemBuilder: (_, index) =>
                  ItemListaProduto(anuncio: lista[index]),
            ),
          )
        ],
      ),
    );
  }
}
