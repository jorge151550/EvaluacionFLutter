import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_login/src/pages/home_page.dart';
import 'package:flutter_application_login/src/pages/dietas.dart';
import 'package:flutter_application_login/src/pages/imc.dart';
import 'package:flutter_application_login/src/pages/registrer.dart';
import 'package:flutter_application_login/src/widgets/dietas_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]); //Esta Parte del codigo es que sin importar la orientacion toda la pantalla gire completa sin dañar la forma de botones

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gimnacio La Gloria',
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        'Home': (BuildContext context) => const HomePage(),
        'dietas': (BuildContext context) => const dietas(),
        'imc': (BuildContext context) => const imc(),
        'registrer': (BuildContext context) => const DietasForm(),
      },
    );
  }
}
