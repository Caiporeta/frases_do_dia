import 'package:flutter/material.dart';
import 'package:frases_do_dia/feature/widgets/image_item.dart';
import 'package:frases_do_dia/feature/widgets/new_message_button.dart';
import 'package:frases_do_dia/feature/widgets/title.dart';
import 'dart:math';

class FraseDoDiaBody extends StatefulWidget {
  const FraseDoDiaBody({Key? key}) : super(key: key);

  @override
  State<FraseDoDiaBody> createState() => _FraseDoDiaBodyState();
}

class _FraseDoDiaBodyState extends State<FraseDoDiaBody> {
  List<String> messages = [
    "Um bom dia pra voce",
    "Todo dia e uma nova oportunidade de recomecar ",
    "Somos hoje a nossa melhor versao",
    "O planeta esta para o humano, como o quintal esta para a formiga",
  ];
  String title = "Clique abaixo para gerar uma frase!";

  void _generateNewMessage() {
    int randomicNumber = Random().nextInt(messages.length);

    setState(() {
      title = messages[randomicNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Frases do Dia",
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          //  width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ImageItem(),
              TitleItem(title: title),
              NewMessageButton(
                callback: () => _generateNewMessage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
