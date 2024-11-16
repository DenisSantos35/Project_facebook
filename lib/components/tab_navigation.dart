import 'package:flutter/material.dart';
import 'package:project_facebook/utils/palete_colors.dart';

class TabNavigation extends StatelessWidget {
  final List<IconData> icons;
  final int indexTabSelection;
  final Function(int) onTap;

  const TabNavigation(
      {super.key,
      required this.icons,
      required this.indexTabSelection,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator: const BoxDecoration(
            border: Border(
                top: BorderSide(color: PaleteColors.azulFacebook, width: 3))),
        tabs: icons
            .asMap()
            .map((index, icon) => MapEntry(
                index,
                Tab(
                  icon: Icon(
                    icon,
                    color: indexTabSelection == index
                        ? PaleteColors.azulFacebook
                        : Colors.black54,
                    size: 30,
                  ),
                )))
            .values
            .toList());
  }
}
