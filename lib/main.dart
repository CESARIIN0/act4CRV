import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'El Cuchillo',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Imagen centrada como fondo, con opacidad
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.3,
              child: Image.network(
                'https://png.pngtree.com/png-clipart/20230928/original/pngtree-burger-png-images-png-image_13164941.png',
                height: screenHeight * 1,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Contenido principal encima
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo como título
                  Image.network(
                    'https://static.wixstatic.com/media/458fe9_ada7f25ae7704fc0974d1d89f9a2d218~mv2.png/v1/crop/x_236,y_823,w_2512,h_1204/fill/w_650,h_312,fp_0.50_0.50,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/logocuchillotransparente_Mesa%20de%20trabajo%201.png',
                    height: 100,
                  ),
                  const SizedBox(height: 40),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Correo Electrónico',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0x93ffffff),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contraseña',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0x93ffffff),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '¿No tienes cuenta?',
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'CREA UNA',
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 40),
                  const Text(
                    'INICIAR SESIÓN CON:',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 20),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, color: Colors.white, size: 45),
                      SizedBox(width: 30),
                      Icon(Icons.g_mobiledata, color: Colors.white, size: 60),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
