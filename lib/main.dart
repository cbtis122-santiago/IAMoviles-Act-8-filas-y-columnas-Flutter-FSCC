import 'package:flutter/material.dart';

void main() => runApp(const AlaburgerSantiagoApp());

class AlaburgerSantiagoApp extends StatelessWidget {
  const AlaburgerSantiagoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const PantallaMenu(),
    );
  }
}

class PantallaMenu extends StatelessWidget {
  const PantallaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5), // Fondo gris suave

      // 1. APPBAR - Azul con íconos blancos
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Azul elegante para el negocio
        centerTitle: true,
        leading: const Icon(Icons.lunch_dining, color: Colors.white),
        title: const Text(
          "Alaburger Santiago",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.restaurant_menu, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.delivery_dining, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),

      // 2. BODY - Con SafeArea y la cuadrícula de colores
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // FILA 1: NARANJA Y AMARILLO (Las clásicas y las papas)
              Expanded(
                child: Row(
                  children: [
                    _crearBotonMenu(Colors.orange, "Burgers", Icons.local_fire_department),
                    _crearBotonMenu(Colors.yellow[700]!, "Papas Fritas", Icons.breakfast_dining),
                  ],
                ),
              ),

              // FILA 2: MAGENTA Y VERDE (Combos y Ensaladas/Veggie)
              Expanded(
                child: Row(
                  children: [
                    _crearBotonMenu(Colors.blueGrey, "Combos Familia", Icons.groups),
                    _crearBotonMenu(Colors.green, "Menú Veggie", Icons.food_bank),
                  ],
                ),
              ),

              // FILA 3: AZUL Y ROJO (Bebidas y Promociones)
              Expanded(
                child: Row(
                  children: [
                    _crearBotonMenu(Colors.blue, "Bebidas", Icons.local_drink),
                    _crearBotonMenu(Colors.red, "¡Promociones!", Icons.star),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget personalizado para evitar repetir código y que se vea "Premium"
  Widget _crearBotonMenu(Color color, String titulo, IconData icono) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8), // Espacio entre los cuadros
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25), // Bordes redondeados
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, color: Colors.white, size: 40),
            const SizedBox(height: 10),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}