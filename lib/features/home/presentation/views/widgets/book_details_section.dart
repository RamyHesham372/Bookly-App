import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utilities/styles.dart';
import 'package:booklyapp/features/home/data/models/Book_model.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_action.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel})
      : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var relativeWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: relativeWidth * 0.24),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? emptyImage,
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?.first ?? 'UnKnown',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          ratingsCount: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(height: 37),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: BookAction(bookModel: bookModel),
        ),
      ],
    );
  }
}
