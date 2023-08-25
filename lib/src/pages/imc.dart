import 'package:flutter/material.dart';

class imc extends StatefulWidget {
  const imc({super.key});

  @override
  State<imc> createState() => _imcState();
}

class _imcState extends State<imc> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController estaturaController = TextEditingController();
  double imc = 0;
  String composicionCorporal = '';

  void calcularIMC() {
    double peso = double.tryParse(pesoController.text) ?? 0;
    double estatura = double.tryParse(estaturaController.text) ?? 0;

    if (peso > 0 && estatura > 0) {
      setState(() {
        imc = peso / (estatura * estatura);
      });
    }

    if (peso > 0 && estatura > 0) {
      setState(() {
        imc = peso / (estatura * estatura);

        if (imc < 18.5) {
          composicionCorporal = 'Peso inferior al normal';
        } else if (imc >= 18.5 && imc <= 24.9) {
          composicionCorporal = 'Normal';
        } else if (imc >= 25.0 && imc <= 29.9) {
          composicionCorporal = 'Peso superior al normal';
        } else {
          composicionCorporal = 'Obesidad';
        }
      });
    }
  }

  @override
  void dispose() {
    pesoController.dispose();
    estaturaController.dispose();
    super.dispose();
  }

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
                      'Calcular IMC',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Divider(height: 20.0),
                    TextField(
                      controller: pesoController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Peso (kg)',
                        prefixIcon: Icon(Icons.accessibility),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      controller: estaturaController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Estatura (m)',
                        prefixIcon: Icon(Icons.height),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: calcularIMC,
                      child: const Text('Calcula tu IMC'),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Tu IMC es de: ${imc.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Composición corporal: $composicionCorporal',
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
