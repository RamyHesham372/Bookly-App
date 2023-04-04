import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utilities/app_router.dart';
import 'package:booklyapp/core/utilities/styles.dart';
import 'package:booklyapp/features/home/data/models/Book_model.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl:
                    bookModel.volumeInfo.imageLinks?.thumbnail ?? emptyImage),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          Styles.textStyle20.copyWith(fontFamily: gtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      bookModel.volumeInfo.authors!.first,
                      maxLines: 1,
                      style: Styles.textStyle14,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text('Free',
                          style: Styles.textStyle18
                              .copyWith(fontWeight: FontWeight.w600)),
                      const SizedBox(width: 40),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        ratingsCount: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
