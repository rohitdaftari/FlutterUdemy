import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String imgUrl;
  final Icon icon;
  const Category({this.id, this.title, this.color, this.imgUrl, this.icon});
}
