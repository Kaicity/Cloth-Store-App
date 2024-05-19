import 'package:flutter/material.dart';

import '../constants.dart';

class AddToCart extends StatelessWidget {
  final int currentNumber;
  final Function() onAdd;
  final Function() onRemove;

  const AddToCart({super.key, required this.currentNumber, required this.onAdd, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kcontentdcolor,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: onRemove,
                    iconSize: 18,
                    icon: const Icon(Icons.remove),
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentNumber.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: onAdd,
                    iconSize: 18,
                    icon: const Icon(Icons.add),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 185,
              decoration: BoxDecoration(
                color: kprimarycolor,
                borderRadius: BorderRadius.circular(40),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Thêm vào giỏ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
