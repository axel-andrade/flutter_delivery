import 'package:flutter/material.dart';
import 'package:masflu/pages/home/ui/homeItem.dart';
import 'package:shimmer/shimmer.dart';

class HomeItemPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 6,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Colors.grey[400],
        highlightColor: Colors.white,
        child: HomeItem(
          callback: () {},
          color: Colors.blue,
          icon: Icons.list,
          text: '',
          number: '',
        ),
      ),
    );
  }
}
