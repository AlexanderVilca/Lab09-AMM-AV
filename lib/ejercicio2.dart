import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Producto'),
      ),
      body: ProductDetails(),
    );
  }
}

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://ripleype.imgix.net/https%3A%2F%2Fmedia-prod-use-1.mirakl.net%2FSOURCE%2F498d245436af46fda9b88fbc46df33df?w=750&h=555&ch=Width&auto=format&cs=strip&bg=FFFFFF&q=60&trimcolor=FFFFFF&trim=color&fit=fillmax&ixlib=js-1.1.0&s=04fbcdcf4da0bca1eacf127881af2dac', // URL de la imagen del producto
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Teclado Xtech XTK-520S',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'S/140', // Precio del producto
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'El Teclado Xtech XTK-520S posee una tiempo de vida de 50 millones de pulsaciones, con iluminación incorporada y tecnología  de membranas. Su conexión USB lo hace compatible con la mayoría de computadores en el mercado. Posee 104 teclas ergonómicas silenciosas que hacen de su uso una experiencia realmente placentera y silenciosa. ', // Descripción del producto
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductDetailsScreen(),
    );
  }
}
