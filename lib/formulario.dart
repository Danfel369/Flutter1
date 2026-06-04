import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistroUsuario(),
      locale: Locale('es', 'ES')

    );
  }
}

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({super.key});

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  // KEY DEL FORMULARIO
  final _formKey = GlobalKey<FormState>();

  // CONTROLADORES

  //Final son los constructores
  final nombreController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  //variables del sistema
  bool aceptaTerminos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro Profesional'),
        backgroundColor: Colors.indigo,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [
              const Icon(
                Icons.account_circle,
                size: 120,
                color: Color.fromARGB(255, 141, 230, 40),
              ),

              const SizedBox(height: 20),

              const Text(
                'Registro de Usuario',

                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              // NOMBRE
              TextFormField(
                controller: nombreController,

                decoration: const InputDecoration(
                  labelText: 'Nombre Completo',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Complete los datos porfa';
                  }
                },
              ),

              const SizedBox(height: 20),
              // EMAIL
              TextFormField(
                controller: emailController,

                keyboardType: TextInputType.emailAddress,

                decoration: const InputDecoration(
                  labelText: 'Correo Electrónico',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value){
                  if (value == null || value.isEmpty || !value.contains('@')){
                    return 'Por favor, ingresa tu correo';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                    return 'Por favor ingresa un correo valido';
                  }
                },
              ),

              const SizedBox(height: 20),
              // TELEFONO
              TextFormField(
                controller: phoneController,

                keyboardType: TextInputType.phone,

                decoration: const InputDecoration(
                  labelText: 'Número de Teléfono',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),

                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Por favor ingresa el número de telefono';
                  }
                  if (value.length < 6) {
                    return 'La contraseña debe tener al menos 6 caracteres';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 28),
              //Calendario
              SizedBox(

              ),

              const SizedBox(height: 30),

              CheckboxListTile(
                title: const Text('Acepto términos y condiciones'),
                value: aceptaTerminos, 
                onChanged: (value) {
                  setState(() {
                    aceptaTerminos = 
                      value!; // actualñizar el estado del checkbox 
                  });
                },
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() && aceptaTerminos) {
                        //lógica de registro
                        print("Formulario valido estamos procesando su registro");
                      } else {
                        print(
                          "Por favor complete, complete el formulario y acepte términos."
                        );
                      }
                    },
                    child: const Text('Registrarse'),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}