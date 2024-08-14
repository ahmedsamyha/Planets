import 'package:flutter/material.dart';
import 'package:planet/utils/assets.dart';

import '../utils/constants.dart';

class CustomBottomBavBar extends StatelessWidget {
  const CustomBottomBavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.navBarColor,
          borderRadius: BorderRadius.circular(35)),
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: Image.asset(Assets.imagesMenuIcon)),
              IconButton(
                  onPressed: () {},
                  icon: const Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 35,
                color: Colors.pink[100],
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                size: 35,
                color: Colors.pink[100],
              )),
        ],
      ),
    );
  }
}
