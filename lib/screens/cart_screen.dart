import 'dart:core';

import 'package:clothstore_mobile/constants.dart';
import 'package:clothstore_mobile/screens/main_screen.dart';
import 'package:clothstore_mobile/widgets/product_item_cart.dart';
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
                    builder: (context) => const MainScreen(),
                  ),
                );
              });
            },
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: const Icon(Icons.chevron_left),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 330,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                filled: true,
                fillColor: kcontentdcolor,
                hintText: "Nhập mã giảm giá",
                hintStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
                suffixIcon: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Áp dụng",
                    style: TextStyle(
                      color: kprimarycolor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tạm tính",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "${cartItems.length > 1 ? cartItems.map<double>((e) => e.quantity * e.product.price).reduce((value1, value2) => value1 + value2) : cartItems[0].quantity * cartItems[0].product.price}00 đ",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tổng cộng",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "${cartItems.length > 1 ? cartItems.map<double>((e) => e.quantity * e.product.price).reduce((value1, value2) => value1 + value2) : cartItems[0].quantity * cartItems[0].product.price}00 đ",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kprimarycolor,
                borderRadius: BorderRadius.circular(40),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Thanh toán",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) => ProductItemCart(
                  onRemove: () {},
                  onAdd: () {},
                  cartItem: cartItems[index],
                  removeItem: () {},
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
            itemCount: cartItems.length),
      ),
    );
  }
}
