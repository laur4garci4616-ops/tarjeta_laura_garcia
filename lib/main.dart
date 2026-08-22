import 'package:flutter/material.dart';

void main() {
  runApp(const MiTarjetaApp());
}

class MiTarjetaApp extends StatelessWidget {
  const MiTarjetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Definición de colores principales
    const Color colorFondo = Colors.black; // Fondo negro
    const Color colorFucsia = Color(0xFFE91E63); // Fucsia/Rosa vibrante
    const Color colorTextoBlanco = Colors.white;
    const Color colorTarjeta = Color(0xFF1E1E1E); // Tarjeta oscura para los botones de contacto

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: colorFondo,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Ícono de Perfil / Círculo
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colorFucsia, width: 3),
                      color: Colors.grey[900],
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 60,
                      color: colorFucsia,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Nombre Completo
                  const Text(
                    'LAURA CAROLINA GARCÍA PALMA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colorTextoBlanco,
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Profesión en letras fucsias
                  const Text(
                    'DISEÑADORA MULTIMEDIA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: colorFucsia,
                      letterSpacing: 2.0,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Botón / Tarjeta de Teléfono
                  Card(
                    color: colorTarjeta,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: colorFucsia, width: 1),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: colorFucsia,
                      ),
                      title: Text(
                        '+503 7562 7545',
                        style: TextStyle(
                          color: colorTextoBlanco,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Botón / Tarjeta de Correo
                  Card(
                    color: colorTarjeta,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: colorFucsia, width: 1),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.email,
                        color: colorFucsia,
                      ),
                      title: Text(
                        'komoriii616@gmail.com',
                        style: TextStyle(
                          color: colorTextoBlanco,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}