import 'package:flutter/material.dart';
import 'package:flutter_application_login/src/widgets/input_text.dart';

import '../pages/dietas.dart';

class DietasForm extends StatefulWidget {
  const DietasForm({super.key});

  @override
  State<DietasForm> createState() => _DietasFormState();
}

class _DietasFormState extends State<DietasForm> {
  String _nombre = '';
  String _email = '';
  String _celular = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: <Widget>[
        InputText(
          hint: 'Ingresa Tu Nombre',
          label: 'Nombres',
          keyboard: TextInputType.emailAddress,
          icono: const Icon(Icons.verified_user),
          onChanged: (data) {
            _email = data;
          },
          validator: (data) {
            if (data!.contains('@')) {
              return "Invalido Email";
            }
            return "null";
          },
        ),
        const Divider(
          height: 30.0,
        ),
        InputText(
          hint: 'Ingresa Tu Correo',
          label: 'Correo',
          keyboard: TextInputType.emailAddress,
          icono: const Icon(Icons.verified_user),
          onChanged: (data) {
            _email = data;
          },
          validator: (data) {
            if (data!.contains('@')) {
              return "Invalido Email";
            }
            return "null";
          },
        ),
        const Divider(
          height: 30.0,
        ),
        InputText(
          hint: 'Telefono',
          label: 'Ingresa Tu Telefono',
          obsecure: true,
          icono: const Icon(Icons.lock_outline),
          onChanged: (data) {
            _celular = data;
          },
          validator: (data) {
            if (data!.trim().length == 0) {
              return 'Contraseña Invalida';
            }
            return "null";
          },
        ),
        const Divider(
          height: 30.0,
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            final route =
                MaterialPageRoute(builder: (contex) => const dietas());
            Navigator.push(context, route);
            // Add your sign in logic here
          },
          child: const Text('Iniciar Sesión'),
        ),
      ]),
    );
  }
}
