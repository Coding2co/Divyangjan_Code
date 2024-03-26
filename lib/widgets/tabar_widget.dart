import 'package:divyangjan_frontend/Resources/Strings/app_strings.dart';
import 'package:divyangjan_frontend/widgets/listview_widget.dart';
import 'package:flutter/material.dart';
import '../Resources/Colors/app_colors.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int? myTabIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.secondaryBackground,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              onTap: (value) {
                setState(() {
                  myTabIndex = value;
                });
              },
              tabs: const [
                Tab(
                  text: AppString.onGoing,
                ),
                Tab(
                  text: AppString.upCome,
                ),
                Tab(
                  text: AppString.complete,
                ),
              ],
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                letterSpacing: 0.2,
              ),
              labelColor: AppColors.primaryText,
              unselectedLabelColor: AppColors.secondaryText,
              indicatorColor: AppColors.secondaryText,
              indicatorWeight: 2,
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ListViewWidget(
                    tabIndex: 0,
                  ),
                  ListViewWidget(
                    tabIndex: 1,
                  ),
                  ListViewWidget(
                    tabIndex: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
