import 'package:doleiro_flutter/Widgets/widget_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.all(18),
              child: Center(
                child: Text(
                  "Bem-vindo ao Doleiro!",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          const Padding(
              padding: EdgeInsets.only(top: 18),
              child: Center(
                child: Text(
                  "Crie seu partido e um novo escudo para começar a escalar seus políticos",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Button(
                  text: "Começar",
                  handleClick: () => {
                        Navigator.pushNamed(
                            context, "/political_parties/create")
                      },
                  loading: false))
        ],
      ),
      minimum: const EdgeInsets.all(16),
    ));
  }
}
