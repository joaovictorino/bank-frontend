import 'package:flutter/material.dart';

class CreateTransfer extends StatelessWidget {
  final TextEditingController campoContaOrigem = TextEditingController();
  final TextEditingController campoContaDestino = TextEditingController();
  final TextEditingController campoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: campoContaOrigem,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Conta origem",
              hintText: "000000",
            ),
            maxLength: 6,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: campoContaDestino,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Conta destino",
              hintText: "000000",
            ),
            maxLength: 6,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: campoValor,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Valor",
              hintText: "0.00",
            ),
          ),
        ),
        ElevatedButton(
          child: Text("Salvar"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Comprovante();
            }));
          },
        ),
      ],
    );
  }
}

class Comprovante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comprovante"),
      ),
    );
  }
}
