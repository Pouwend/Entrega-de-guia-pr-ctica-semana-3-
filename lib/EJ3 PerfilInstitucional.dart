import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PerfilInstitucionalScreen());
  }
}

class PerfilInstitucionalScreen extends StatelessWidget {
  const PerfilInstitucionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil institucional')),
      body: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.person, color: Colors.teal),
                SizedBox(width: 8),
                Text(
                  'Ana Martínez',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 6),
            const Text(
              'Desarrolladora de Software',
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.email, size: 18, color: Colors.teal),
                SizedBox(width: 6),
                Expanded(
                  child: Text(
                    'ana.martinez@institucion.edu',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _Area(icono: Icons.code, texto: 'Flutter'),
                _Area(icono: Icons.storage, texto: 'Bases de datos'),
                _Area(icono: Icons.cloud, texto: 'APIs'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Area extends StatelessWidget {
  final IconData icono;
  final String texto;
  const _Area({required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Icon(icono, color: Colors.teal),
          const SizedBox(height: 4),
          Text(texto, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

