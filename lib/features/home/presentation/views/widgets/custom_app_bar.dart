import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utilities/app_router.dart';
import 'package:booklyapp/core/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: myPadding30),
        child: Row(
          children: [
            Image.asset(AssetsData.logo, height: 20),
            const Spacer(),
            IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.searchView);
                },
                icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24))
          ],
        ),
      ),
    );
  }
}
