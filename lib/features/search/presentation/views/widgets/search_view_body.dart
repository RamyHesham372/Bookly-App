import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utilities/styles.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: myPadding30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomSearchTextField(),
            SizedBox(height: 20),
            Text('Search Result', style: Styles.textStyle18),
            SizedBox(height: 10),
            SearchResultListView(),
          ],
        ),
      ),
    );
  }
}
