import 'package:clothstore_mobile/bm-api/models/product_model_display.dart';
import 'package:clothstore_mobile/constants.dart';
import 'package:clothstore_mobile/widgets/product_detail.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentdcolor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductDetailAppBar(),
            SizedBox(
              height: 250,
              child: PageView.builder(
                itemCount: 5,
                onPageChanged: (value) => setState(
                  () {
                    currentImage = value;
                  },
                ),
                itemBuilder: (context, index) {
                  return Image.network(widget.product.image);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: currentImage == index
                          ? Colors.black
                          : Colors.transparent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
