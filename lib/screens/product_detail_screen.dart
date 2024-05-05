import 'package:clothstore_mobile/bm-api/models/product_model_display.dart';
import 'package:clothstore_mobile/constants.dart';
import 'package:clothstore_mobile/widgets/product_detail_appbar.dart';
import 'package:clothstore_mobile/widgets/product_detail_desc.dart';
import 'package:clothstore_mobile/widgets/product_detail_information.dart';
import 'package:clothstore_mobile/widgets/slider_product_detail.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int currentImage = 0;

  int currentSize = 0;

  int currentColor = 0;

  int currentNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentdcolor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
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
                      onPressed: () {
                        setState(() {
                          if (currentNumber > 0) {
                            currentNumber--;
                          }
                        });
                      },
                      iconSize: 18,
                      icon: const Icon(Icons.remove),
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      currentNumber.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          currentNumber++;
                        });
                      },
                      iconSize: 18,
                      icon: const Icon(Icons.add),
                      color: Colors.white,
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
                  "Thêm vào giỏ hàng",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductDetailAppBar(),
              SliderProductDetail(
                  onChange: (index) {
                    setState(() {
                      currentImage = index;
                    });
                  },
                  currentImage: currentImage,
                  image: widget.product.image),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductDetailInformation(product: widget.product),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Màu sắc",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? Colors.white
                                  : widget.product.colors[index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget.product.colors[index],
                                    )
                                  : null,
                            ),
                            padding: currentColor == index
                                ? const EdgeInsets.all(3)
                                : null,
                            margin: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.product.colors[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Kích thước",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          widget.product.sizes.length,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                currentSize = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: 60,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: currentSize == index
                                    ? Colors.blue
                                    : kcontentdcolor,
                              ),
                              margin: const EdgeInsets.only(right: 10),
                              child: Center(
                                child: Text(
                                  widget.product.sizes[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ProductDetailDescription(product: widget.product),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
