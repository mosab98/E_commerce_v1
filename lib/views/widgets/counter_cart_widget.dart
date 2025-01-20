import 'package:ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CounterCartWidget extends StatefulWidget {
  const CounterCartWidget({super.key});

  @override
  State<CounterCartWidget> createState() => _CounterCartWidgetState();
}

class _CounterCartWidgetState extends State<CounterCartWidget> {
  @override
  int counter = 1;
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30,
        width: 80,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppColors.grey2, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: AppColors.white, shape: BoxShape.circle),
                  child: InkWell(
                    onTap: counter > 1
                        ? () {
                            setState(() {
                              counter--;
                            });
                          }
                        : null,
                    child: const Icon(
                      Icons.remove,
                      size: 22,
                    ),
                  ),
                ),
                const SizedBox(),
                Text(counter.toString()),
                const SizedBox(),
                DecoratedBox(
                  decoration: BoxDecoration(
                      color: AppColors.white, shape: BoxShape.circle),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
