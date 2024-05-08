import 'package:clothstore_mobile/constants.dart';
import 'package:clothstore_mobile/widgets/categories.dart';
import 'package:clothstore_mobile/widgets/home_slider.dart';
import 'package:clothstore_mobile/widgets/product_card.dart';
import 'package:clothstore_mobile/widgets/seach_field.dart';
import 'package:flutter/material.dart';

import '../bm-api/models/category_model_display.dart';
import '../bm-api/models/product_model_display.dart';
import '../widgets/home_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Banner slide hien tai
  int currentSlide = 0;

  //Category
  final List<CategoryModel> categories = [
    CategoryModel(
        id: "1",
        code: "xxx",
        name: "Đồ Nam",
        image:
            "https://bizweb.dktcdn.net/100/372/359/products/line-1.jpg?v=1655491797300",
        comment: "x"),
    CategoryModel(
        id: "1",
        code: "xxx",
        name: "Đồ Nữ",
        image:
            "https://bizweb.dktcdn.net/100/372/359/products/skull-do-1.jpg?v=1655492146777",
        comment: "x"),
    CategoryModel(
        id: "1",
        code: "xxx",
        name: "Giày Dép",
        image:
            "https://img.mwc.com.vn/giay-thoi-trang?w=640&h=640&FileInput=/Resources/Product/2024/01/25/z5102322056774_0d404d4c6f186e6b13a5a8369a0804eb.jpg7",
        comment: "x"),
    CategoryModel(
        id: "1",
        code: "xxx",
        name: "Phụ Kiện",
        image:
            "https://img.mwc.com.vn/giay-thoi-trang?w=640&h=640&FileInput=//Upload/2019/04/57289491-579294249232551-3415718616413241344-n.jpg",
        comment: "x"),
    CategoryModel(
        id: "1",
        code: "xxx",
        name: "Túi-Balo",
        image:
            "https://bizweb.dktcdn.net/100/372/359/products/z3484546891470-645e97512480761128c11852b1fa210e.jpg?v=16549380219337",
        comment: "x"),
  ];

  final List<Product> products = [
    Product(
        id: "83r88hw-fw877322",
        code: 'P001',
        name: 'Áo sơ mi nam',
        price: 269.000,
        description:
            'Chiếc áo thun nam này là sự kết hợp hoàn hảo giữa phong cách và thoải mái. Với chất liệu cotton cao cấp, áo thun này mang lại cảm giác mềm mại và thoáng mát cho người mặc trong mọi hoàn cảnh.'
            ' Thiết kế cổ tròn cổ điển kết hợp cùng tay áo ngắn tạo nên sự thoải mái và dễ dàng kết hợp với nhiều loại trang phục khác nhau.',
        image: 'https://bizweb.dktcdn.net/thumb/1024x1024/100/472/913/products/8-1687161700963.png?v=1687161706960',
        category: 'Áo sơ mi',
        rate: 4.5,
        colors: [Colors.black, Colors.blue, Colors.pink],
        sizes: ["M", "S", "L"]),
    Product(
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
    Product(
        id: "f78efy938-fe8f87",
        code: 'P001',
        name: 'Áo Thun Nam',
        price: 199.000,
        description: 'Áo sơ mi nữ kiểu dáng trẻ trung, phong cách.',
        image:
            'https://bizweb.dktcdn.net/thumb/1024x1024/100/472/913/products/4-1687014666814.png?v=1687014674297',
        category: 'Áo khoác',
        rate: 5.0,
        colors: [Colors.black, Colors.blue, Colors.pink],
        sizes: ["M", "S"]),
    Product(
        id: "80uf9refe8y-fe8fhge8",
        code: 'P001',
        name: 'Áo Khoác',
        price: 499.000,
        description: 'Vẻ đẹp của phải nữ',
        image:
            'https://bizweb.dktcdn.net/thumb/1024x1024/100/472/913/products/windjacket-1688350870380-f93038e7-29b3-4406-92ca-94fd9f76f1f2.png?v=1691560753867',
        category: 'phụ kiện',
        rate: 2.8,
        colors: [Colors.black, Colors.blue, Colors.pink],
        sizes: ["XL", "2Xl", "4XL"]),
    Product(
        id: "f78efy938-fe8f87",
        code: 'P001',
        name: 'Thương bạn gái',
        price: 199.000,
        description: 'Áo sơ mi nữ kiểu dáng trẻ trung, phong cách.',
        image:
            'https://bizweb.dktcdn.net/100/467/832/products/dm-20230821164209-001.jpg?v=1692694024000',
        category: 'Áo khoác',
        rate: 5.0,
        colors: [Colors.black, Colors.blue, Colors.pink],
        sizes: ["M", "S"]),
    Product(
        id: "80uf9refe8y-fe8fhge8",
        code: 'P001',
        name: 'Rope Print',
        price: 499.000,
        description: 'Vẻ đẹp của phải nữ',
        image:
            'https://bizweb.dktcdn.net/100/369/010/products/nta101-43ac0jrd-1-tkv0-hinh-mat-truoc-0.jpg?v=1695486946443',
        category: 'phụ kiện',
        rate: 2.8,
        colors: [Colors.black, Colors.blue, Colors.pink],
        sizes: ["S", "M", "L", "XL", "2Xl", "3XL", "4XL"]),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kscaffoldcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                //Cai box empty
                const SizedBox(
                  height: 20,
                ),
                const SeachField(),
                const SizedBox(
                  height: 20,
                ),
                HomeSlider(
                  onChange: (value) {
                    setState(() {
                      currentSlide = value;
                    });
                  },
                  currentSlide: currentSlide,
                ),
                const SizedBox(
                  height: 20,
                ),
                Categories(categories: categories),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sản Phẩm Nổi Bật",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Nhiều hơn",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
