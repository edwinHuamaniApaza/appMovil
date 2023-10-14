
import 'package:flutter/material.dart';
import 'producto.dart';

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