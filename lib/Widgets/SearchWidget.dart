import 'package:flutter/material.dart';
import 'package:mohamed/sizeConfig.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 8,
            child: Container(
              height: getProportionateScreenHeight(50.0),
              color: theme.highlightColor.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search ..",
                    style: TextStyle(
                      color: theme.hintColor,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 18.0,
                    color: theme.hintColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
