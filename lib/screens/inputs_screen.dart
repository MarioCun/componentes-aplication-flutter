import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Mario',
      'last_name': 'Melo',
      'email': 'mario@google.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    hintText: 'Usuario',
                    helperText: 'Nombre de usuario',
                    counterText: '3 Caracteres',
                    icon: Icons.supervised_user_circle_rounded,
                    suffixIcon: Icons.assured_workload_outlined,
                    labelText: 'Nombre',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    hintText: 'Usuario',
                    helperText: 'Apellido de usuario',
                    counterText: '3 Caracteres',
                    icon: Icons.supervised_user_circle_rounded,
                    suffixIcon: Icons.assured_workload_outlined,
                    labelText: 'Apellido',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    hintText: 'Usuario',
                    helperText: 'Correo de usuario',
                    counterText: '3 Caracteres',
                    icon: Icons.email,
                    suffixIcon: Icons.email,
                    labelText: 'Correo',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    hintText: 'Contraseña',
                    helperText: 'Contraseña del usuario',
                    counterText: '3 Caracteres',
                    icon: Icons.password,
                    suffixIcon: Icons.password,
                    labelText: 'Contraseña',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 10),

                  DropdownButtonFormField(
                    items:  const [
                      DropdownMenuItem(value: 'Admin', child:  Text('Admin'),),
                      DropdownMenuItem(value: 'supermen', child:  Text('supermen'),),
                      DropdownMenuItem(value: 'Dev.sr', child:  Text('Dev.sr'),),
                      DropdownMenuItem(value: 'Dev.jr', child:  Text('Dev.jr'),)
                    ] , 
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },),

                  const SizedBox(height: 10),
                  
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                        padding: const EdgeInsets.all(13)),
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                            child: Text(
                          'Guardar',
                        ))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      //* imprimir valores del formulario
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
