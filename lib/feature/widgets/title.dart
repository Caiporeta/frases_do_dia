import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  final String title;
  const TitleItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
