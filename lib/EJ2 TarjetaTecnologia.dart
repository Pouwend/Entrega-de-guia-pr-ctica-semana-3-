import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TecnologiasMovilesScreen());
  }
}

class TecnologiasMovilesScreen extends StatelessWidget {
  const TecnologiasMovilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tecnologías móviles')),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.indigo.shade50,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.smartphone, size: 48, color: Colors.indigo),
              const SizedBox(height: 10),
              const Text(
                'Flutter',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const Text(
                'Framework para desarrollo multiplataforma',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _Bloque(icono: Icons.android, texto: 'Android'),
                  _Bloque(icono: Icons.web, texto: 'Web'),
                  _Bloque(icono: Icons.desktop_windows, texto: 'Desktop'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Bloque extends StatelessWidget {
  final IconData icono;
  final String texto;
  const _Bloque({required this.icono, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icono, color: Colors.indigo),
        const SizedBox(height: 4),
        Text(texto),
      ],
    );
  }
}
