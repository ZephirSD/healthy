import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'component/macarte.dart';
import 'component/genre.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveCouleur = Color(0xFF111328);
enum Genre { Homme, Femme }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool colorBool1 = false;
  Color carteHommeCouleur = inactiveCouleur;
  Color carteFemmeCouleur = inactiveCouleur;

  updateColor(Genre genre) {
    // if (genre == Genre.Homme && carteHommeCouleur == inactiveCouleur) {
    //   carteFemmeCouleur = inactiveCouleur;
    //   carteHommeCouleur = activeColor;
    // }
    genre == Genre.Homme && carteHommeCouleur == inactiveCouleur
        ? carteHommeCouleur = activeColor
        : carteHommeCouleur = inactiveCouleur;
    genre == Genre.Femme && carteFemmeCouleur == inactiveCouleur
        ? carteFemmeCouleur = activeColor
        : carteFemmeCouleur = inactiveCouleur;
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
                        updateColor(Genre.Homme);
                      });
                    },
                    child: MaCarte(
                      carteHommeCouleur,
                      SelectGenre(FontAwesomeIcons.mars, "Homme"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Genre.Femme);
                        ;
                      });
                    },
                    child: MaCarte(
                      carteFemmeCouleur,
                      SelectGenre(FontAwesomeIcons.venus, "Femme"),
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
