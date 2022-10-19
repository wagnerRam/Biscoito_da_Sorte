import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var listaFrases = [
    "A vida trará coisas boas se tiver paciência.",
    "Demonstre amor e alegria em todas as oportunidades e verá que a paz nasce dentro de si.",
    "Não compense na ira o que lhe falta na razão.",
    "Defeitos e virtudes são apenas dois lados da mesma moeda.",
    "A maior de todas as torres começa no solo.",
    "Não há que ser forte. Há que ser flexível.",
    "Todos os dias organiza os seus cabelos, por que não faz o mesmo com o coração?",
    "Há três coisas que jamais voltam; a flecha lançada, a palavra dita e a oportunidade perdida.",
    "A juventude não é uma época da vida, é um estado de espírito.",
    "Podemos escolher o que semear, mas somos obrigados a colher o que plantamos.",
  ];

  var imgBiscoito = "images/biscoito_1.jpg";

  var fraseSorte = "Clique no botão para gerar a frase!";

  // metodo para quebrar o biscoite

  void quebrarBiscoito() {
    var num = Random().nextInt(listaFrases.length);
    fraseSorte = listaFrases[num];

    imgBiscoito = "images/biscoito_2.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biscoito da Sorte"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 63, 56, 56),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imgBiscoito),
                radius: 150,
                backgroundColor: Colors.white,
              ),
              Text(
                fraseSorte,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: quebrarBiscoito,
                child: Text("QUEBRAR BISCOITO"),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 63, 56, 56),
                    onPrimary: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
