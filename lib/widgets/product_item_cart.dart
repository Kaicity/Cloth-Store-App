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
            children: [
              IconButton(
                onPressed: removeItem(),
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Container(
            width: 105,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentdcolor,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: onRemove(),
                  padding: const EdgeInsets.only(left: 2),
                  icon: const Icon(
                    Icons.remove,
                    size: 14,
                  ),
                ),
                Text(
                  "${cartItem.quantity}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: onAdd(),
                  padding: const EdgeInsets.only(right: 5),
                  icon: const Icon(
                    Icons.add,
                    size: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
