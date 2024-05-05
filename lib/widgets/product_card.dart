import 'package:clothstore_mobile/bm-api/models/product_model_display.dart';
import 'package:clothstore_mobile/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: kcontentdcolor),
            child: Column(
              children: [
                Image(
                  image: NetworkImage(product.image),
                  width: 100,
                  height: 100,
                ),
                Text(
                  product.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "${product.price}\0\0 \đ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Row(
                      children: List.generate(
                        product.colors.length,
                        (cindex) => Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: product.colors[cindex],
                              shape: BoxShape.circle),
                          margin: const EdgeInsets.only(right: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: kprimarycolor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
