import 'package:flutter/material.dart';

import 'anuncio.dart';

class ItemListaProduto extends StatelessWidget {

  final Anuncio anuncio;

  const ItemListaProduto({Key key, @required this.anuncio}) :
        assert(anuncio != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8, right: 4, left: 4),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Container(
        height: 124,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 144,
                  height: 124,
                  child: FadeInImage.assetNetwork(
                      image: anuncio.image,
                      placeholder: 'images/logo.jpg',
                      fit:BoxFit.cover
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      anuncio.nome,
                      style: Theme.of(context).textTheme.body1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      anuncio.valor,
                      style: Theme.of(context).textTheme.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      anuncio.data,
                      style: Theme.of(context).textTheme.caption,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
