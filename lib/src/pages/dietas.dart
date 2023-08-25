import 'package:flutter/material.dart';
import 'package:flutter_application_login/src/widgets/dietas_form.dart';

class dietas extends StatefulWidget {
  const dietas({super.key});

  @override
  State<dietas> createState() => _dietasState();
}

class _dietasState extends State<dietas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xff6610f2),
                Color(0xffff1493),
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 40),
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset(
                          'images/logoGYM.png',
                          width: 160.0,
                          height: 160.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 0.0),
                    const Text(
                      'Dietas Recomendas',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 20.0,
                    ),
                    const Text(
                      'Desayuno'
                      'Un yogur desnatado y una pieza de fruta.1/2 taza de avena cocida con una de leche y dos cucharadas de pasas, 1/4 de mango y una bebida sin calorías.Comida Una ensalada de pasta elaborada con una lata de atún, cuatro tazas de pasta cocida, dos tazas de zanahoria y calabacín en dados y cuatro cucharadas de mayonesa baja en calorías y una naranja. Pasteles de quinoa y batata, ensalada mixta con aderezo sin grasa y una bebida sin calorías.Cena Una tercio de una pizza de queso de 12 pulgadas. Una ensalada verde elaborada con media taza de tomate en rodajas, cebolla roja y champiñones. Y dos cucharadas de aliño. 1 pizza de pan árabe, 3/4 de taza de frutas mezcladas y una bebida sin calorías Aperitivo entre las tres comidas Una manzana. 1 taza de pimientos morrón en tiras y 2 cucharadas de hummus.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Divider(
                      height: 20.0,
                    ),
                    CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image.asset(
                          'images/dietas.png',
                          width: 160.0,
                          height: 160.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
