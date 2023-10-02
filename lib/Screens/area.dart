import 'package:flutter/material.dart';

class Area extends StatelessWidget{

  final bgcolor;
  Area({required this.bgcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
    );
  }

}