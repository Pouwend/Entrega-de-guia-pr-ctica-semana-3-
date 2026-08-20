import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TarjetaProfesionalScreen());
  }
}

class TarjetaProfesionalScreen extends StatelessWidget {
  const TarjetaProfesionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi perfil profesional')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Sección: logo + nombre + rol
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.deepPurple,
                    child: const Icon(Icons.terminal, size: 40, color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Juan Pérez',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Desarrollador de Software',
                    style: TextStyle(fontSize: 15, color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Apasionado por el desarrollo móvil multiplataforma.\n'
                    'Enfocado en crear interfaces limpias y funcionales.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // Sección: tecnologías
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _Tecnologia(icono: Icons.flutter_dash, texto: 'Flutter'),
                  _Tecnologia(icono: Icons.code, texto: 'Dart'),
                  _Tecnologia(icono: Icons.storage, texto: 'Firebase'),
                ],
              ),
            ),
            // Sección: contacto
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.email, size: 18, color: Colors.deepPurple),
                      SizedBox(width: 8),
                      Text('juan.perez@correo.com'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.link, size: 18, color: Colors.deepPurple),
                      SizedBox(width: 8),
                      Text('linkedin.com/in/juanperez'),
                    ],
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

class _Tecnologia extends StatelessWidget {
  final IconData icono;
  final String texto;
  const _Tecnologia({required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icono, color: Colors.deepPurple),
        const SizedBox(height: 4),
        Text(texto),
      ],
    );
  }
}
