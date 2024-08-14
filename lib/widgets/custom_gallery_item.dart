import 'package:flutter/material.dart';

class CustomGalleryItem extends StatelessWidget {
  const CustomGalleryItem({super.key, required this.imageName});
  final String imageName;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(
          imageName,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
