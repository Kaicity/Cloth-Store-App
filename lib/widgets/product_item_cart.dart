import 'package:clothstore_mobile/bm-api/models/cart_model_display.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProductItemCart extends StatelessWidget {
  final Function onRemove;
  final Function onAdd;
  final Function removeItem;
  final CartItem cartItem;

  const ProductItemCart(
      {super.key,
      required this.onRemove,
      required this.onAdd,
      required this.cartItem,
      required this.removeItem});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  color: kcontentdcolor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(cartItem.product.image),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.product.name,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    cartItem.product.category,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${cartItem.product.price}00 đ",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: removeItem(),
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: kcontentdcolor,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: onRemove(),
                      iconSize: 18,
                      icon: const Icon(Icons.remove),
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      cartItem.quantity.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: onAdd(),
                      iconSize: 18,
                      icon: const Icon(Icons.add),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
