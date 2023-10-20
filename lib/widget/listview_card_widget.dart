import 'package:flutter/material.dart';
import 'package:news_app/widget/card_widget.dart';

class ListviewCardWidget extends StatelessWidget {
  const ListviewCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 8, (context, index) {
        return CardWidget();
      }),
    );
  }
}
