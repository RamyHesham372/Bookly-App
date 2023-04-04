import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, required this.rating, required this.ratingsCount})
      : super(key: key);

  final num rating;
  final num ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F), size: 14),
        const SizedBox(width: 6.3),
        Text('$rating', style: Styles.textStyle16),
        const SizedBox(width: 5),
        Opacity(
            opacity: 0.5,
            child: Text('($ratingsCount)', style: Styles.textStyle14)),
      ],
    );
  }
}
