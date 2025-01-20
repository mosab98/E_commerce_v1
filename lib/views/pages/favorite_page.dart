import 'package:ecommerce/models/category_item_model.dart';
import 'package:ecommerce/models/product_item_model.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                //width: 50,

                child: ListView.builder(
                  itemCount: dummyCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final theCategorieName = dummyCategories[index].name;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grey4),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                              child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              theCategorieName,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(color: AppColors.grey),
                            ),
                          ))),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Text(dummyFavorites.length.toString())
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 200,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dummyFavorites.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 100,
                    child: ProductItem(
                      productItem: dummyFavorites[index],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
