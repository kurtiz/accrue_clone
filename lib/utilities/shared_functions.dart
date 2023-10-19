import 'package:flutter/material.dart';

double widgetWidthToLeave(context, double percentage) {
  double width = MediaQuery.of(context).size.width;
  return width - (width * percentage);
}