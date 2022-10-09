import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'tab/homepage_cadre_tabbar.dart';
import '../home_page_folder/homepage_gauge.dart';
import '../home_page_folder/homepage_drawer.dart';
import '../home_page_folder/product_plus_page.dart';

//import 'package:firebase_core/firebase_core.dart';

class HomeCadrePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      key: _formKey,
      drawer: Drawer(
        child: Container(
          width: 302.0,
          child: HomepageDrawer(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff2C7B0C),
        toolbarHeight: 56.0,
        title: Text(
          "User_Name 의 냉장고", //User_Name Firebase���� �޾ƿ;���
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Color(0xff2C7B0C),
        child: Container(
            height: 56.0,
            child: Row(
              children: [
                Center(
                  child: Builder(builder: (context) {
                    return IconButton(
                      iconSize: 18.0,
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  }),
                ),
                SizedBox(width: 11.0),
                IconButton(
                  iconSize: 16.0,
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 11.0),
                IconButton(
                  iconSize: 18.0,
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.sort,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(ProductPlusPage());
        },
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 25.0,
          ),
        ),
        backgroundColor: Color(0xffFFB200),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24.0, 22.0, 0.0, 4.0),
            child: Row(children: [
              HomepageGauge(),
              SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("�� ��ǰ : N��"),
                  Text("������� �ӹ� : M��"),
                  Text("������� ��� : L��"),
                ],
              )
            ]),
          ),
          Expanded(
            child: HomepageCadreTabbar(),
          ),
        ],
      ),
    ));
  }
}
