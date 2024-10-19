import 'package:flutter/material.dart';

class ShopScren extends StatefulWidget {
  const ShopScren({super.key});

  @override
  State<ShopScren> createState() => _ShopScrenState();
}

class _ShopScrenState extends State<ShopScren> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text("Shop State"),
    );
  }
}
