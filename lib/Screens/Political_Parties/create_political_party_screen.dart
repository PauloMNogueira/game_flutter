import 'package:doleiro_flutter/Widgets/widget_input_text.dart';
import 'package:flutter/material.dart';

class CreatePolitiacalParty extends StatefulWidget {
  CreatePolitiacalParty({Key? key}) : super(key: key);

  @override
  _CreatePolitiacalPartyState createState() => _CreatePolitiacalPartyState();
}

class _CreatePolitiacalPartyState extends State<CreatePolitiacalParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Text(
            "Meu Partido",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 8),
          child: Center(
            child: Column(
              children: [
                Input(callback: (String val) => {print(val)}, placeholder: "Nome do Partido")
              ],
            ),
          ),
        ));
  }
}
