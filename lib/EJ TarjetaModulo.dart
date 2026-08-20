import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: InformacionModuloScreen());
  }
}

class InformacionModuloScreen extends StatelessWidget {
  const InformacionModuloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi módulo')),
      body: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Desarrollo de Aplicaciones Móviles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Duración: 80 horas'),
            const SizedBox(height: 10),
            const Text('Modalidad: Semipresencial'),
            const SizedBox(height: 10),
            const Text('Tecnología principal: Flutter'),
            const SizedBox(height: 20),
            Row(
              children: const [
                Icon(Icons.school, color: Colors.blue),
                SizedBox(width: 8),
                Text('Técnico en Desarrollo de Software'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Para probar hot reload: cambia el color del Container (por ejemplo a
// Colors.green.shade50) o el borderRadius (por ejemplo a 30) y guarda el
// archivo para ver el cambio sin reiniciar la app.
