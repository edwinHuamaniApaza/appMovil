
/* ejemplo2 */
import 'package:flutter/material.dart';

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


 

class PageTitle extends StatelessWidget {
  final String title;

  PageTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Extiende al 100% del ancho de la pantalla.
      margin: EdgeInsets.only(top: 40.0, bottom: 30.0),
      padding: EdgeInsets.all(32.0),
      color: Colors.green, // Fondo verde.
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontFamily: 'Montserrat',fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.white), // Texto en blanco.
          ),
            Spacer(),
          Image.asset(
            'assets/img/imagen.png', // Reemplaza 'tu_imagen.jpg' con la ruta correcta de tu imagen.
            width: 150, // Ancho de la imagen.
          ),
        ],
      ),
    );
  }
}




class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
     /*  margin: EdgeInsets.all(12.0), */
     margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      padding: EdgeInsets.all(29.0),
      decoration: BoxDecoration(
        color: Colors.white, // Fondo blanco.
        borderRadius: BorderRadius.circular(10.0), // Borde redondeado.
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              product.imagePath,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: TextStyle(
                  fontFamily: 'Montserrat',fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                product.description,
                style: TextStyle(fontFamily: 'Montserrat',fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          Text(
            "\S/${product.price.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


class Product {
  final String name;
  final String description;
  final double price;
  final String imagePath;

  Product(this.name, this.description, this.price, this.imagePath);// parametros
}
