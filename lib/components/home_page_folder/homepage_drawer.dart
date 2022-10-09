import 'package:flutter/material.dart';

class HomepageDrawer extends StatelessWidget {
  const HomepageDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ],
            accountName: Text('test'),
            accountEmail: Text('test3@test.io'),
            onDetailsPressed: () {
              print('arrow is clicked');
            },
            decoration: BoxDecoration(
                //color: Color(0xff2C7B0C),
                ),
          ),
          Ink(
            color: Colors.lightGreen,
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Color(0x99000000),
              ),
              title: Text(
                '지난알림',
                style: TextStyle(
                  color: Color(0x99000000),
                ),
              ),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ),
          Ink(
            color: Colors.lightGreen,
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0x99000000),
              ),
              title: Text(
                '비밀번호 재설정',
                style: TextStyle(
                  color: Color(0x99000000),
                ),
              ),
              onTap: () {
                print('q');
              },
              trailing: Icon(Icons.add),
            ),
          ),
          Ink(
            color: Colors.lightGreen,
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Color(0x99000000),
              ),
              title: Text(
                '로그아웃',
                style: TextStyle(
                  color: Color(0x99000000),
                ),
              ),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
