import 'package:flutter/material.dart';
import 'package:planet/models/planet_model.dart';
import 'package:planet/utils/constants.dart';
import 'package:planet/widgets/custom_gallery_item.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.planetInfo});
  final PlanetInfo planetInfo;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  bool isExpandedText = false;

  void toggleExpanded() {
    setState(() {
      isExpandedText = !isExpandedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.primaryTextColor,
            )),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * .32,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      widget.planetInfo.name,
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w900,
                          color: AppColors.primaryTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Solar System',
                      style: TextStyle(
                          fontSize: 35, color: AppColors.primaryTextColor),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 24, right: 24, top: 5, bottom: 20),
                    child: Divider(
                      color: Colors.black12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Text(
                      widget.planetInfo.description,
                      maxLines: isExpandedText ? null : 4,
                      overflow: isExpandedText
                          ? TextOverflow.visible
                          : TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: GestureDetector(
                      onTap: () {
                        toggleExpanded();
                      },
                      child: Text(
                        isExpandedText ? 'Read less' : 'Read more',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 24, right: 24, top: 5, bottom: 20),
                    child: Divider(
                      color: Colors.black12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                          fontSize: 25,
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 32),
                    child: SizedBox(
                      height: height * .21,
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => CustomGalleryItem(
                              imageName: widget.planetInfo.images[index]),
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 8,
                              ),
                          itemCount: widget.planetInfo.images.length),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 0,
                right: -15,
                child: Hero(
                    tag: widget.planetInfo.id,
                    child: Image.asset(
                      widget.planetInfo.imageIcon,
                      height: height * .35,
                    ))),
            Positioned(
              top: -50,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  widget.planetInfo.id.toString(),
                  style: TextStyle(
                      fontSize: 250,
                      color: AppColors.primaryTextColor.withOpacity(.1),
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
/*
            Positioned(
                top: 10,
                left: 20,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColors.primaryTextColor,
                    )
                )
            )
*/
          ],
        ),
      ),
    );
  }
}
