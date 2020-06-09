import 'package:flutter/material.dart';
import 'package:masflu/pages/client/ui/listItem.dart';
import 'package:shimmer/shimmer.dart';

class ClientListSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: Theme.of(context).cardColor,
        highlightColor: Theme.of(context).cardColor.withOpacity(0.5),
        child: ClientListItem(
          model: null,
          isSkeleton: true,
        ),
      ),
    );
  }
}
