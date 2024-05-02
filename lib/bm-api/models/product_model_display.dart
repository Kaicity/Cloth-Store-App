import 'dart:ui';

import 'package:flutter/material.dart';

class Product {
  final String id;
  final String code;
  final String name;
  final double price;
  final String description;
  final String image;
  final String category;
  final List<Color> colors;

  Product({
    required this.id,
    required this.code,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
    required this.colors,
  });
}
