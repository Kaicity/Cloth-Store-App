import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;

  const HomeSlider(
      {super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
              onPageChanged: onChange,
              itemCount: 4,
              itemBuilder: (context, index) {
                String imageUrl;
                if (index == 1) {
                  imageUrl =
                      "https://static.vecteezy.com/system/resources/previews/008/174/590/non_2x/fashion-advertising-web-banner-illustration-vector.jpg";
                } else if (index == 2) {
                  imageUrl =
                      "https://marketplace.canva.com/EAFEH3mIUaM/1/0/1600w/canva-dark-grey-and-white-minimalist-new-fashion-collection-banner-nvaqxg-8iXI.jpg";
                } else if (index == 3) {
                  imageUrl =
                      "https://img.freepik.com/free-psd/fashion-model-banner-template_23-2148858371.jpg";
                } else {
                  imageUrl =
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-sale-banner-template-design-f7863ed31571a109d072a7dae4778ca1_screen.jpg?ts=1605627076";
                }
                return Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      //Su dung hinh anb tu Network Link , con su dung local dung thi AssetImage
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }),
        ),

        //Infidicator next page
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
