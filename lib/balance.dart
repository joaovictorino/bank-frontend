import 'package:flutter/material.dart';

class BalanceAccount extends StatelessWidget {
  final TextEditingController campoNumeroConta = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: campoNumeroConta,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Número da conta",
              hintText: "000000",
            ),
            maxLength: 6,
            keyboardType: TextInputType.number,
          ),
        ),
        ElevatedButton(
          child: Text("Consultar"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Saldo();
            }));
          },
        ),
      ],
    );
  }
}

class Saldo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saldo"),
      ),
    );
  }
}
