import 'dart:core';

import 'package:clothstore_mobile/constants.dart';
import 'package:clothstore_mobile/screens/home_screen.dart';
import 'package:clothstore_mobile/screens/main_screen.dart';
import 'package:flutter/material.dart';

import '../bm-api/models/cart_model_display.dart';
import '../bm-api/models/product_model_display.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> cartItems = [
    CartItem(
        product: Product(
            id: "83r88hw-9erufg9e8yf8",
            code: 'P001',
            name: 'Áo Sơ Mi IO',
            price: 350.000,
            description:
                'Chiếc áo thun nam này là sự kết hợp hoàn hảo giữa phong cách và thoải mái. Với chất liệu cotton cao cấp, áo thun này mang lại cảm giác mềm mại và thoáng mát cho người mặc trong mọi hoàn cảnh.'
                ' Thiết kế cổ tròn cổ điển kết hợp cùng tay áo ngắn tạo nên sự thoải mái và dễ dàng kết hợp với nhiều loại trang phục khác nhau.',
            image: 'https://bizweb.dktcdn.net/100/472/913/products/6-1687162107163.png?v=1687162112210',
            category: 'Áo khoác',
            rate: 3.8,
            colors: [Colors.black, Colors.blue, Colors.pink],
            sizes: ["M", "S", "L", "XL"]),
        quantity: 2),
    CartItem(
        product: Product(
            id: "grger8g8e8eu-fe8",
            code: 'P001',
            name: 'Đầm Nữ',
            price: 300.000,
            description:
                'Chiếc áo thun nam này là sự kết hợp hoàn hảo giữa phong cách và thoải mái. Với chất liệu cotton cao cấp, áo thun này mang lại cảm giác mềm mại và thoáng mát cho người mặc trong mọi hoàn cảnh.'
                ' Thiết kế cổ tròn cổ điển kết hợp cùng tay áo ngắn tạo nên sự thoải mái và dễ dàng kết hợp với nhiều loại trang phục khác nhau.',
            image: 'https://bizweb.dktcdn.net/thumb/1024x1024/100/472/913/products/4-1687014666814.png?v=1687014674297',
            category: 'Phụ Kiện',
            rate: 5.0,
            colors: [Colors.black, Colors.blue, Colors.pink],
            sizes: ["S", "L", "XL"]),
        quantity: 6),
    CartItem(
        product: Product(
            id: "f9w9ejf0whe",
            code: 'kmwoj',
            name: 'Áo thun Zix',
            price: 299.000,
            description:
                'Chiếc áo thun nam này là sự kết hợp hoàn hảo giữa phong cách và thoải mái. Với chất liệu cotton cao cấp, áo thun này mang lại cảm giác mềm mại và thoáng mát cho người mặc trong mọi hoàn cảnh.'
                ' Thiết kế cổ tròn cổ điển kết hợp cùng tay áo ngắn tạo nên sự thoải mái và dễ dàng kết hợp với nhiều loại trang phục khác nhau.',
            image: 'https://bizweb.dktcdn.net/thumb/1024x1024/100/472/913/products/4-1687014666814.png?v=1687014674297',
            category: 'Phụ Kiện',
            rate: 2.0,
            colors: [Colors.black, Colors.blue, Colors.pink],
            sizes: ["M", "L", "XXL"]),
        quantity: 4)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentdcolor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Giỏ hàng",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              });
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: const Icon(Icons.chevron_left),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) => Stack(
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
                            child:
                                Image.network(cartItems[index].product.image),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartItems[index].product.name,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                cartItems[index].product.category,
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${cartItems[index].product.price}00 đ",
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
                            onPressed: () {
                              setState(() {
                                cartItems.remove(cartItems[0]);
                              });
                            },
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
                              onPressed: () {
                                setState(() {});
                              },
                              padding: const EdgeInsets.only(left: 2),
                              icon: const Icon(
                                Icons.remove,
                                size: 14,
                              ),
                            ),
                            Text(
                              "${cartItems[index].quantity}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {});
                              },
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
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: cartItems.length),
      ),
    );
  }
}
