import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Explore',
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          Row(
            children: [
              const Text(
                'Solar System',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white60,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.pink[200],
                size: 35,
              )
            ],
          ),
        ],
      ),
    );
  }
}
