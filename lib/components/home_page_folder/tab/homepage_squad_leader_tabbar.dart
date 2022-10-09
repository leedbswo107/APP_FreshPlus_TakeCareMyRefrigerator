import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../homepage_controller.dart';
import '../product.dart';

class HomepageSquadLeaderTabbar extends StatefulWidget {
  _HomepageSquadLeaderTabbarState createState() => _HomepageSquadLeaderTabbarState();
}

class _HomepageSquadLeaderTabbarState extends State<HomepageSquadLeaderTabbar>
    with SingleTickerProviderStateMixin {
  final homepageController = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
          Tab(text: '분대원\n R명'),
          Tab(text: '위험물품 \n M\+L개'),
          Tab(text: '유실\nK개'),
          Tab(text: '미등록\nT개'),
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
          _buildList(key: "key4", string: "List4: "),
        ],
      ),
    );
  }

  Widget _buildList({String? key, String? string}) {
    final controller = Get.put(HomepageController());
    //final Productlength = homepageController.products.length;
    //문제점 ItemCount 에 product_plus_page 의 productData length 를 구해야 하는데 오류가 발생!
    controller.onInit();
    return ListView.builder(
        key: PageStorageKey(key),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
            child: Container(
              height: 88.0,
              width: 327.0,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 62.0,
                  width: 103.0,
                  child: Image.asset("assets/products/bananamilk.jpg"),
                ),
                SizedBox(width: 8.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    _buildProductName(index),
                    SizedBox(height: 4.0),
                    _buildtest(index),
                    SizedBox(height: 6.15),
                    SizedBox(
                      height: 1.0,
                      width: 300.0,
                      child: const DecoratedBox(decoration: const BoxDecoration(
                        color: Color(0x14212121)
                      )),
                    ),
                  ],
                ),
              ],
            ),
            ),
            
          );
        });
  }

  Widget _buildProductName(int index) {
    return GetX<HomepageController>(builder: (controller) {
      return Text(
        controller.products[index].productName,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          color: Color(0xDE000000),
        ),
      );
    });
  }

  Widget _buildshelfLife(int index) {
    return GetX<HomepageController>(builder: (controller) {
      return Text(
        '${controller.products[index].shelfLife}',
        style: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            color: Color(0x99000000)),
      );
    });
  }
  Widget _buildtest(int index) {
    return GetX<HomepageController>(builder: (controller) {
      return Text(
        '${controller.products[index].test}',
        style: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            color: Color(0x99000000)),
      );
    });
  }
}
