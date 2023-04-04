import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utilities/styles.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/newest_list_view.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeaturedBooksListView(),
              Padding(
                  padding:
                      EdgeInsets.only(top: 50, bottom: 20, left: myPadding30),
                  child: Text('The Newest', style: Styles.textStyle18)),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: myPadding30),
            child: NewestListView(),
          ),
        ),
      ],
    );
  }
}
