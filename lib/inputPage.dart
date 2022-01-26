import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/macarte.dart';
import 'component/genre.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveCouleur = Color(0xFF111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool colorBool1 = false;
  Color carteHommeCouleur = inactiveCouleur;
  Color carteFemmeCouleur = inactiveCouleur;

  updateColor(int genre) {
    if (genre == 1 && carteHommeCouleur != activeColor) {
      carteFemmeCouleur = inactiveCouleur;
      carteHommeCouleur = activeColor;
    } else if (genre == 2 && carteFemmeCouleur != activeColor) {
      carteFemmeCouleur = activeColor;
      carteHommeCouleur = inactiveCouleur;
    } else if (genre == 1) {
      carteHommeCouleur = inactiveCouleur;
    } else if (genre == 2) {
      carteFemmeCouleur = inactiveCouleur;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATEUR IMC"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: MaCarte(
                      carteHommeCouleur,
                      Genre(FontAwesomeIcons.mars, "Homme"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                        ;
                      });
                    },
                    child: MaCarte(
                      carteFemmeCouleur,
                      Genre(FontAwesomeIcons.venus, "Femme"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MaCarte(activeColor, Container()),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MaCarte(
                    activeColor,
                    Container(),
                  ),
                ),
                Expanded(
                  child: MaCarte(
                    activeColor,
                    Container(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
