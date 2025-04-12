import 'package:flutter/material.dart';
import 'package:meri_didi_app/components/container_carousel.dart';
import 'package:meri_didi_app/components/image_carousel.dart';
import 'package:meri_didi_app/components/image_text_card.dart';
import 'package:meri_didi_app/components/image_with_label.dart';
import 'package:meri_didi_app/theme.dart';

class Homecontent extends StatelessWidget {
  const Homecontent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded, color: lightYellowColor),
                      SizedBox(width: 10),
                      Text('Add Your Address', style: labelTextStyle),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: bgColor,
                      border: Border.all(width: 1, color: greyColor),
                    ),
                    child: Icon(Icons.menu, color: greyColor),
                  ),
                ],
              ),
            ),
            ImageCarousel(
              imagePaths: [
                'assets/img.webp',
                'assets/img.webp',
                'assets/img.webp',
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Our Featured Services',
                      style: titleNormalTextStyle,
                    ),
                  ),
                  SizedBox(height: 20),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      CircularImageWithLabel(
                        imagePath: 'assets/logo.png',
                        label: 'Domestic Help',
                      ),
                      CircularImageWithLabel(
                        imagePath: 'assets/logo.png',
                        label: 'Domestic Help',
                      ),
                      CircularImageWithLabel(
                        imagePath: 'assets/logo.png',
                        label: 'Domestic Help',
                      ),
                      CircularImageWithLabel(
                        imagePath: 'assets/logo.png',
                        label: 'Domestic Help',
                      ),
                      CircularImageWithLabel(
                        imagePath: 'assets/logo.png',
                        label: 'Domestic Help',
                      ),
                      CircularImageWithLabel(
                        imagePath: 'assets/logo.png',
                        label: 'Domestic Help',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('Explore', style: titleNormalTextStyle),
              ),
            ),
            SizedBox(height: 10),
            ContainerCarousel(
              containers: [
                ImageTextCard(
                  imagePath: 'assets/img.webp',
                  title: 'Cooks',
                  body: 'Hire Lady Cook for Home in Nagpur,Home in',
                  buttonText: 'Book Now',
                  onPressed: () {},
                ),
                ImageTextCard(
                  imagePath: 'assets/img.webp',
                  title: 'Cooks',
                  body: 'Hire Lady Cook for Home in Nagpur, Home in',
                  buttonText: 'Book Now',
                  onPressed: () {},
                ),
                ImageTextCard(
                  imagePath: 'assets/img.webp',
                  title: 'Cooks',
                  body: 'Hire Lady Cook for Home in Nagpur, Home in',
                  buttonText: 'Book Now',
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
