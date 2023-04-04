import 'package:booklyapp/core/utilities/launch_url.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:booklyapp/features/home/data/models/Book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          onPressed: () {},
          text: 'Free',
          textColor: Colors.black,
          backGroundColor: Colors.white,
        )),
        Expanded(
            child: CustomButton(
          onPressed: () async {
            await launchCustomUrl(context, bookModel.volumeInfo.previewLink);
          },
          text: getText(bookModel),
          fontSize: 16,
          textColor: Colors.white,
          backGroundColor: const Color(0xffEF8262),
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15), topRight: Radius.circular(15)),
        )),
      ],
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
