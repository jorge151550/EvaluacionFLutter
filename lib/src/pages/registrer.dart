import 'package:flutter/material.dart';
import 'package:flutter_application_login/src/widgets/dietas_form.dart';

class contactanos extends StatefulWidget {
  const contactanos({super.key});

  @override
  State<contactanos> createState() => _contactanosState();
}

class _contactanosState extends State<contactanos> {
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
            padding:
                const EdgeInsets.symmetric(horizontal: 500.0, vertical: 40),
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
                      'Ingresa Los Datos',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(
                      height: 20.0,
                    ),
                    const DietasForm()
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
