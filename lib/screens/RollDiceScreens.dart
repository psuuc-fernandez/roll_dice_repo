import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

int activeDiceFace = 6;
List<String> DiceImage = [
  'https://www.clker.com/cliparts/m/v/m/J/4/V/dice-1-th.png',
  'https://www.clker.com/cliparts/m/v/m/J/4/V/dice-1-th.png',
  'https://th.bing.com/th/id/R.a49ab82b4c6423c0a274897b9f778f29?rik=YpTBDW9DWk4mzg&riu=http%3a%2f%2fkevan.org%2fimages%2fliarsdice%2fdie3.png&ehk=GeKj2iK9zdZDNI4eHe0pvy9%2fMSMMhRs7Ml0oEw2J4R4%3d&risl=&pid=ImgRaw&r=0',
  'https://clipground.com/images/clipart-dice-faces-9.jpg',
  'https://th.bing.com/th/id/R.1ff8b8638ed6f9033d81328ea011521f?rik=xtf7u%2bSwGR48nQ&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fe%2fy%2f7%2fh%2fW%2fK%2fdice-5-hi.png&ehk=rmxPoRfapkRW5X%2fkHQMKZkKJ7B6GsvFgQ4gdiMT03D4%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.a7b123bc2bd2cd150781f0f9eb35784b?rik=ZgX%2bGxkth14KuA&riu=http%3a%2f%2fwww.clker.com%2fcliparts%2fl%2f6%2f4%2f3%2fK%2fH%2fdice-6-hi.png&ehk=aOxoY6cpaNMG4SpxXMu5FaSnQggoh6Hv2mmkOIGgRuo%3d&risl=&pid=ImgRaw&r=0',
  'https://th.bing.com/th/id/R.2765d90e2641c621d1e412930da5f965?rik=M3tyiM7UXMTAvg&riu=http%3a%2f%2fgifimage.net%2fwp-content%2fuploads%2f2018%2f04%2frolling-dice-gif.gif&ehk=Ih9mku1DCvLl3vMQ4ne89dkvwvUiKhTx8LpnYzLRdiM%3d&risl=&pid=ImgRaw&r=0'
];

class _RollDiceScreenState extends State<RollDiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Roll Dice!"),
              const SizedBox(
                height: 50,
              ),
              Image.network(DiceImage[activeDiceFace]),
              SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  var ranNum = Random().nextInt(2);
                  setState(() {
                    activeDiceFace = ranNum;
                  });

                  print(ranNum);
                },
                child: const Text("Roll!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
