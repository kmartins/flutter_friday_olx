import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String titulo;

  const TabButton({Key key, @required this.titulo})
      : assert(titulo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        padding: const EdgeInsets.all(16.0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        color: Colors.white,
        onPressed: () {},
        child: Text(
          titulo,
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Color(0xff6E0AD6)),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
