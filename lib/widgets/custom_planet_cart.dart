import 'package:flutter/material.dart';
import 'package:planet/utils/constants.dart';

class CustomPlanetCart extends StatelessWidget {
  const CustomPlanetCart(
      {super.key,
      required this.name,
      required this.image,
      required this.id,
      this.onPressed});
  final String name;
  final String image;
  final int id;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * .1,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 71, 69, 95),
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Solar System',
                      style: TextStyle(
                          fontSize: 30,
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Know More',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: AppColors.secondaryTextColor),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_outlined,
                            color: AppColors.secondaryTextColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 150,
              right: 0,
              child: SizedBox(
                height: height * .42,
                child: Hero(tag: '$id', child: Image.asset(image)),
              )),
          Positioned(
              right: 20,
              top: 110,
              child: Text(
                '$id',
                style: TextStyle(
                    fontSize: 260,
                    color: AppColors.primaryTextColor.withOpacity(0.1),
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
