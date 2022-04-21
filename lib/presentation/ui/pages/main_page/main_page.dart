import 'package:apps/presentation/ui/pages/main_page/main_page_view_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _BottomNavigationBarWidget(),
    );
  }
}

class _BottomNavigationBarWidget extends StatelessWidget {
  const _BottomNavigationBarWidget({Key? key}) : super(key: key);

  BottomNavigationBarItem createItem({
    required int currentPage,
    required int index,
    required String imageAdress,
    required String label,
    required BuildContext context,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        imageAdress,
        color: (currentPage == index)
            ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
            : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentPage =
        context.select((MainPageViewModel model) => model.currentPage);
    final model = context.read<MainPageViewModel>();
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentPage,
      onTap: model.changePage,
      items: [
        for (int i = 0; i < model.bottomNavigationBarItems.length; i++)
          createItem(
            context: context,
            index: i,
            currentPage: currentPage,
            label: model.bottomNavigationBarItems[i].label,
            imageAdress: model.bottomNavigationBarItems[i].image,
          )
      ],
    );
  }
}
