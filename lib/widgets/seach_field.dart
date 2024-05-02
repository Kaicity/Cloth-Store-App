import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SeachField extends StatelessWidget {
  const SeachField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentdcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          //Cai box empty
          const SizedBox(
            width: 10,
          ),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Tìm kiếm...", border: InputBorder.none),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list_outlined,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
