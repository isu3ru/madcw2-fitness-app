import 'package:flutter/material.dart';
import 'package:madcw2_fitness/widgets/ad_banner.dart';

class AdBannerSlider extends StatelessWidget {
  const AdBannerSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 232,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return AdBanner(
            imagePath: 'assets/images/banners/fitness-image-1.jpg',
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 8.0,
          );
        },
        itemCount: 3,
      ),
    );
  }
}