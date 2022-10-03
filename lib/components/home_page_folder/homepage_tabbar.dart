import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/components/home_page_folder/homepage_controller.dart';

class HomepageTabbar extends StatefulWidget {
  _HomepageTabbarState createState() => _HomepageTabbarState();
}

class _HomepageTabbarState extends State<HomepageTabbar>
    with SingleTickerProviderStateMixin {
  final homepageController = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          _buildTabBar(),
          _buildTabBarView(),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      color: Color(0xff2C7B0C),
      child: TabBar(
        tabs: [
          Tab(text: '위험한물품 \n M + L 개'),
          Tab(text: '음료 \n N\' 개'),
          Tab(text: '즉석식품\nN\'\' 개'),
        ],
      ),
    );
  }

  Widget _buildTabBarView() {
    return Expanded(
      child: TabBarView(
        children: [
          _buildList(key: "key1", string: "List1: "),
          _buildList(key: "key2", string: "List2: "),
          _buildList(key: "key3", string: "List3: "),
        ],
      ),
    );
  }

  Widget _buildList({String? key, String? string}) {
    return GetX<HomepageController>(builder: (controller) {
      return ListView.builder(
          key: PageStorageKey(key),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${controller.products[index].productName}',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${controller.products[index].shelfLife}',
                )
              ],
            );
          });
    });
  }
}
