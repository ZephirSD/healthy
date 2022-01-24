import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

void main() => runApp(NavbarHealthy());

class NavbarHealthy extends StatelessWidget {
  const NavbarHealthy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: HexColor("#090c22"),
        appBar: AppBar(
          title: Text("Calculateur IMC"),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          //backgroundColor: Colors.purple,
          child: const Icon(Icons.add),
        ),
        body: Healthy(),
      ),
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.purple,
        ),
        scaffoldBackgroundColor: HexColor("#090c22"),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Healthy extends StatefulWidget {
  Healthy({Key? key}) : super(key: key);

  @override
  State<Healthy> createState() => _HealthyState();
}

class _HealthyState extends State<Healthy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
                height: 200.0,
                width: 170.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1E33),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                height: 200.0,
                width: 170.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF1D1E33),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
                height: 200.0,
                width: 170.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1E33),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                height: 200.0,
                width: 170.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1E33),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
