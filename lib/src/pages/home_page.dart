import 'package:flutter/material.dart';
import 'package:flutter_application_login/src/pages/calorias.dart';
import 'package:flutter_application_login/src/pages/imc.dart';
import 'package:flutter_application_login/src/pages/registrer.dart';
import 'package:flutter_application_login/src/pages/rutinas.dart';

import 'dietas.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      'Bienvenidos a Vida Saludable',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 20.0,
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        final route = MaterialPageRoute(
                            builder: (contex) => const dietas());
                        Navigator.push(context, route);
                        // Add your sign in logic here
                      },
                      child: const Text('Dietas'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (contex) => const imc());
                        Navigator.push(context, route);
                        // Add your sign in logic here
                      },
                      child: const Text('Imc'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (contex) => calorias());
                        Navigator.push(context, route);
                        // Add your sign in logic here
                      },
                      child: const Text('Calorias'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        final route = MaterialPageRoute(
                            builder: (contex) => const RutinasViewComponent());
                        Navigator.push(context, route);
                        // Add your sign in logic here
                      },
                      child: const Text('Rutinas de Ejercicio'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        final route =
                            MaterialPageRoute(builder: (contex) => calorias());
                        Navigator.push(context, route);
                        // Add your sign in logic here
                      },
                      child: const Text('Presion Arterial'),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        final route = MaterialPageRoute(
                            builder: (contex) => const contactanos());
                        Navigator.push(context, route);
                        // Add your sign in logic here
                      },
                      child: const Text('Contactanos'),
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
