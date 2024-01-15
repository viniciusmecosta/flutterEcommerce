import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eletrohome/models/Category.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: demo_categories.length,
        itemBuilder: (context, index) => CategoryCard(
          icon: demo_categories[index].icon,
          title: demo_categories[index].title,
          press: () {},
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 9),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromRGBO(209, 209, 209, 0.5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
      ),
      child: Padding(
        //padding: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 3, horizontal: 0.55),
        child: Row(
          children: [
            SvgPicture.asset(icon),
          ],
        ),
      ),
    );
  }
}
