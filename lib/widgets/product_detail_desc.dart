import 'package:clothstore_mobile/bm-api/models/product_model_display.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProductDetailDescription extends StatelessWidget {
  final Product product;

  const ProductDetailDescription({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kprimarycolor,
          ),
          alignment: Alignment.center,
          child: const Text(
            "Mô tả",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          product.description,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
