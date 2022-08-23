import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = {
    "Que o dia comece bem e termine ainda melhor.",
    "Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.",
    "Às vezes as coisas demoram, mas acontecem. O importante é saber esperar e não perder a fé!",
    "Imagine uma nova história para a sua vida e acredite nela.",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Sorria! Deus acaba de te dar um novo dia e coisas extraordinárias podem acontecer se você acreditar.",
    "Levanta, sacode a poeira e dá a volta por cima.",
    "Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia.",
    "Que os dias ruins se tornem raros e os bons virem rotina.",
    "Todo dia é uma ocasião especial. Guarde apenas o que tem que ser guardado: lembranças, sorrisos, poemas, cheiros, saudades, momentos…",
    "Cultive o amor, tristeza não dá flor.",
    "Não se preocupe em entender, viver ultrapassa qualquer entendimento.",
    "Seja a mudança que você deseja ver no mundo.",
    "Só existem dois dias no ano em que nada pode ser feito. Um se chama ontem e o outro se chama amanhã, portanto hoje é o dia certo para amar, acreditar, fazer e principalmente viver.",
    "A mudança que você quer está na decisão que você toma.",
    "Viva sua vida com quem te deixa feliz e não com quem você tenha que agradar.",
    "Na plenitude da felicidade, cada dia é uma vida inteira.",
    "Sonhar, viver e todo dia agradecer.",
    "Que o dia seja leve, que a tristeza seja breve e que o dia seja feliz.",
    "A maior conquista da vida é estar em paz.",
    "A simplicidade é o mais alto grau de sofisticação.",
    "Todo mundo crê em algo. Eu creio que tomarei outra xícara de café.",
    "Pare de reclamar da segunda-feira e aproveite a semana.",
    "A forma que você decide enxergar as coisas faz toda a diferença.",
    "Você está vivendo aquilo que precisa viver, isso vai te fazer crescer.",
    "Situações difíceis constroem pessoas mais fortes.",
    "Um brinde ao que é vivido e não postado.",
    "Ninguém é o que já foi. Aceite a mudança.",
    "Comece acreditando que é possível.",
    "Cada segundo é tempo para mudar tudo para sempre.",
    "Cada segundo é tempo para mudar tudo para sempre.",
    "Você nunca encontrará um arco-íris se estiver olhando para baixo.",
    "O sol nunca vai embora para quem tem alma de girassol.",
    "Já que é preciso aceitar a vida, que seja então corajosamente.",
  };

  var _fraseGerada = "Clique Abaixo para gerar uma nova frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _fraseGerada[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          //width: double.infinity,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(
            width: 3,
            color: Colors.amber,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Enviar",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
