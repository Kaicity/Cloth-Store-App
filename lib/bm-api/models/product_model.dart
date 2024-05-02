
import 'package:clothstore_mobile/bm-api/models/color_model.dart';
import 'package:clothstore_mobile/bm-api/models/size_model.dart';
import 'package:flutter/cupertino.dart';

import '../enums/product_status.dart';
import '../enums/specification_product.dart';
import 'category_model_display.dart';
import 'company_model.dart';

class Product {
  final String id;
  final String code;
  final String name;
  final double price;
  final ProductStatus productStatus;
  final String description;
  final String image;
  final SpecificationProduct specification;
  final CategoryModel category;
  final CompanyModel company;
  final List<ColorModel> colors;
  final List<SizeModel> sizes;

  Product({
    required this.id,
    required this.code,
    required this.name,
    required this.price,
    required this.productStatus,
    required this.description,
    required this.image,
    required this.specification,
    required this.category,
    required this.company,
    required this.colors,
    required this.sizes,
  });

  // Phương thức chuyển đổi đối tượng thành Map (JSON)
}
