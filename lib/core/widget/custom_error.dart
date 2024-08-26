import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key,required this.ErrorMessage});
  final String ErrorMessage;

  @override
  Widget build(BuildContext context) {
    return  Text(ErrorMessage,style: Styles.textStyle18,);
  }
}
