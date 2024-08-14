import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planet/models/planet_model.dart';
import 'package:planet/utils/constants.dart';
import 'package:planet/views/details_view.dart';
import 'package:planet/widgets/custom_app_bar.dart';

import '../widgets/custom_bottom_bav_bar.dart';

/*
 (context, index) => CustomPlanetCart(
                            name: planets[index].name,
                            image: planets[index].imageIcon,
                            id: planets[index].id,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsView(
                                            planetInfo: planets[index],
                                          )));
                            },
                          )
*/
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.secondGradientColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.firstGradientColor,
              AppColors.secondGradientColor,
            ])),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: height * .07,
                ),
                SizedBox(
                  height: height * .6,
                  child: Swiper(
                      itemCount: planets.length,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Get.to(DetailsView(planetInfo: planets[index]),
                                  transition: Transition.fadeIn,
                                  duration: const Duration(milliseconds: 600));
                            },
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 35, vertical: 35),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: height * .1,
                                          ),
                                          Text(
                                            planets[index].name,
                                            style: const TextStyle(
                                                fontSize: 50,
                                                color: Color.fromARGB(
                                                    255, 71, 69, 95),
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Text(
                                            'Solar System',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color:
                                                    AppColors.primaryTextColor,
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
                                                    color: AppColors
                                                        .secondaryTextColor),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.arrow_forward_outlined,
                                                  color: AppColors
                                                      .secondaryTextColor,
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
                                      child: Hero(
                                          tag: planets[index].id,
                                          child: Image.asset(
                                              planets[index].imageIcon)),
                                    )),
                                Positioned(
                                    right: 20,
                                    top: 110,
                                    child: Text(
                                      '${planets[index].id}',
                                      style: TextStyle(
                                          fontSize: 260,
                                          color: AppColors.primaryTextColor
                                              .withOpacity(0.1),
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                      itemHeight: height * .5,
                      physics: const BouncingScrollPhysics(),
                      itemWidth: double.infinity,
                      layout: SwiperLayout.TINDER,
                      pagination: const SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                              size: 8,
                              activeSize: 12,
                              activeColor: Colors.white,
                              color: Colors.white24))),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomBavBar(),
    );
  }
}
