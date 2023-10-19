import 'package:flutter/material.dart';
import 'package:news_app/widget/card_widget.dart';

class ListviewCardWidget extends StatelessWidget {
  const ListviewCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return CardWidget();
        });
  }
}
