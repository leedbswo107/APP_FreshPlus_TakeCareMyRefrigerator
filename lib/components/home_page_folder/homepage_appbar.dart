import 'package:flutter/material.dart';

/*
appbar 구성
(관리자)
왼쪽상단에 뒤로가기 버튼

(분대장)
오른쪽상단에 자기 냉장고 페이지 가는 버튼

(용사)
basic 제목만 필요
*/
class HomepageAppbar extends AppBar {
  HomepageAppbar()
      : super(
        backgroundColor: Color(0xff2C7B0C),
        toolbarHeight: 56.0,
        title: Text(
          "User_Name 의 냉장고", //User_Name Firebase에서 받아와야함
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
