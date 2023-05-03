import 'dart:developer';

import 'package:flutter/material.dart';

class NewMessageButton extends StatelessWidget {
  void Function() callback;
  NewMessageButton({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        log("Botao pressionado!");
        callback.call();
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
      ),
      child: const Text(
        "Nova Frase",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
