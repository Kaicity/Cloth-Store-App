import 'package:flutter/cupertino.dart';

import '../bm-api/models/category_model_display.dart';


class Categories extends StatelessWidget {
  const Categories({super.key, required this.categories});

  //Category
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          // padding: const EdgeInsets.only(right: 5),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(categories[index].image),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  categories[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          itemCount: categories.length),
    );
  }
}
