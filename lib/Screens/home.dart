import 'package:flutter/material.dart';
import 'dart:math' show pi;
import '../Models/Products.dart';
import '../Widgets/CustomCurve.dart';
import 'details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5FAE1),
      body: Column(
        children: [
          SizedBox(height: 70),
          const Text(
            'My Fashion Style',
            style: TextStyle(fontFamily: 'Condena',fontSize: 100),
          ),
          SizedBox(height: 30),
          Expanded(
            child: PageView.builder(
              physics: ClampingScrollPhysics(),
              controller: _pageController,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return crousal(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget crousal(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, child) {
        double value = 0;
        double scale = 0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - _pageController.page!;
          scale = (1 - (value.abs() * 0.3)).clamp(0.8, 1.0);
          value = value * 0.02;
        }
        return Transform.rotate(
          angle: pi * value,
          child: Transform.scale(
            scale: scale,
            child: crousalCard(products[index]),
          ),
        );
      },
    );
  }

  Widget crousalCard(Product product) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(seconds: 1),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    ProductDetails(products: product),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Hero(
              tag: 'product_${product.id}_image',
              createRectTween: (begin, end) {
                return CustomCurveRectTween(begin: begin, end: end);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Image.asset(product.image, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          product.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black26,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          product.price,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
