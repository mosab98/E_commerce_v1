import 'dart:math';

import 'package:ecommerce/models/category_item_model.dart';
import 'package:ecommerce/views/widgets/Category_item.dart';
import 'package:flutter/material.dart';

class CategoryTabInnerPage extends StatelessWidget {
  const CategoryTabInnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            itemCount: dummyCategories.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              int id = int.parse(dummyCategories[index].id);
              if (id.isOdd) {
                return InkWell(
                  onTap: () {},
                  child: CategoryItem(
                      category: dummyCategories[index], leftRigth: 0),
                );
              } else {
                return InkWell(
                  onTap: () {},
                  child: CategoryItem(
                      category: dummyCategories[index], leftRigth: 1),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
