import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:indigitech_shop/core/style/colors.dart';
import 'package:indigitech_shop/core/style/text_styles.dart';

class ImageCarousel extends StatefulWidget {
  final List<Image> images;
  const ImageCarousel({
    super.key,
    required this.images,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: widget.images,
          options: CarouselOptions(
            height: 300,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
              });
            },
            enableInfiniteScroll: widget.images.length > 1,
          ),
        ),
        Positioned(
          bottom: 15,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.black.withOpacity(.3),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "${_currentPage + 1} / ${widget.images.length}",
              style: AppTextStyles.caption.copyWith(
                fontSize: 10,
                color: AppColors.primary,
              ),
            ),
          ),
        )
      ],
    );
  }
}
