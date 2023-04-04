import 'package:booklyapp/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errorMassage})
      : super(key: key);
  final String errorMassage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMassage,
        style: Styles.textStyle18,
      ),
    );
  }
}
