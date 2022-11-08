import 'package:flutter/material.dart';

class Width extends SizedBox {
  final double w;

  const Width([this.w = 8, Key? key]) : super(width: w, key: key);
}


class Height extends SizedBox {
  final double h;

  const Height([this.h = 8, Key? key]) : super(height: h, key: key);
}
