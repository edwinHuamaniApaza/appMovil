
/* ejemplo2 */
import 'package:flutter/material.dart';
import 'card.dart';
import 'producto.dart';
import 'titulo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product("Apple Watch", "Digital inteligente táctil.", 100.00, "assets/img/imagen1.jpg"),
    Product("Samsung G. Watch", "Analógico elegante .", 89.99, "assets/img/imagen2.jpg"),
    Product("Fitbit Versa", "Analógico elegante .", 57.99, "assets/img/imagen3.jpg"),
    
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bodega Digital", style: TextStyle(
      fontFamily: 'Atuendo', // Fuente Montserrat.
      fontSize: 20, // Tamaño de fuente deseado.
      fontWeight: FontWeight.bold,
      color: Colors.black)), // Color de fuente deseado.),
        backgroundColor: Color.fromARGB(255, 250, 247, 247),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[200], // Fondo gris claro.
        child: Column(
          children: [
            PageTitle(title: "Lista de productos"),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(product: products[index]);//parametros 
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


 








