import 'package:flutter/material.dart';

class calorias extends StatefulWidget {
  @override
  _caloriasState createState() => _caloriasState();
}

class _caloriasState extends State<calorias> {
  TextEditingController desayunoController = TextEditingController();
  TextEditingController almuerzoController = TextEditingController();
  TextEditingController cenaController = TextEditingController();
  seleccionar selectedseleccionar = seleccionar.mujer;
  String caloriascategorias = '';

  void calcularCalorias() {
    int desayuno = int.tryParse(desayunoController.text) ?? 0;
    int almuerzo = int.tryParse(almuerzoController.text) ?? 0;
    int cena = int.tryParse(cenaController.text) ?? 0;

    int totalCalorias = desayuno + almuerzo + cena;
    if (selectedseleccionar == seleccionar.mujer) {
      if (totalCalorias < 1600) {
        caloriascategorias = 'Déficit calórico';
      } else if (totalCalorias >= 1600 && totalCalorias <= 2000) {
        caloriascategorias = 'Consumo normal';
      } else {
        caloriascategorias = 'Consumo Excesivo de calorías';
      }
    } else {
      if (totalCalorias < 1600) {
        caloriascategorias = 'Déficit calórico';
      } else if (totalCalorias >= 2000 && totalCalorias <= 2500) {
        caloriascategorias = 'Consumo normal';
      } else {
        caloriascategorias = 'Consumo Excesivo de calorías';
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.symmetric(horizontal: 500.0, vertical: 40),
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
                  const SizedBox(height: 20.0),
                  const Text(
                    'Cálculo de Calorías',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  TextField(
                    controller: desayunoController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Desayuno'),
                  ),
                  TextField(
                    controller: almuerzoController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Almuerzo'),
                  ),
                  TextField(
                    controller: cenaController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Cena'),
                  ),
                  SizedBox(height: 20),
                  const Text('Seleccione el género:'),
                  RadioListTile<seleccionar>(
                    title: const Text('Mujer'),
                    value: seleccionar.mujer,
                    groupValue: selectedseleccionar,
                    onChanged: (seleccionar? value) {
                      setState(() {
                        selectedseleccionar = value!;
                      });
                    },
                  ),
                  RadioListTile<seleccionar>(
                    title: const Text('Hombre'),
                    value: seleccionar.male,
                    groupValue: selectedseleccionar,
                    onChanged: (seleccionar? value) {
                      setState(() {
                        selectedseleccionar = value!;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: calcularCalorias,
                    child: Text('Calcular'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Categorización de calorías: $caloriascategorias',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum seleccionar {
  mujer,
  male,
}
