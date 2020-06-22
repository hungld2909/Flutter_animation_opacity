import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  double h = 100; //! khởi tạo chiều cao  
  double w = 100; //! khởi tạo chiều dài 
  Color _color = Colors.blue; //! khởi tạo Color
  double _defaultOpacity = 1; //! khai báo độ đậm nhạt của Opacity
  animat(){ //! hàm này dùng để thay đổi trạng thái, khi Click 
    setState(() {
      _defaultOpacity = _defaultOpacity == 1 ? 0 :1; //! sử dụng toán tử 3 ngôi để thay đổi trạng thái
      //Todo: nếu _defaultOpacity == 1, khi click sẽ chuyển Opacity = 0, ngược lại nếu = 0 thì sẽ thành 1.
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Opacity"), 
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            InkWell(//Todo: bắt sự kiện khi click 
              onTap: ()=>animat(),
                          child: AnimatedOpacity(
                duration: Duration(seconds: 3), //Todo: thời gian để xuất hiện và ẩn.
                opacity: _defaultOpacity, //! được khai báo ở trên
                child: Container(
                  height: h,//! được khai báo ở trên
                  width: w,//! được khai báo ở trên
                  decoration: BoxDecoration(color: _color),//! được khai báo ở trên
                ),
              ),
            ),
            // Opacity(
            //   opacity: 0.5,
            //   child: Container(
            //     height: h,
            //     width: w,
            //     decoration: BoxDecoration(color: Colors.red),
            //   ),
            // ),
            // Container(
            //   height: h,
            //   width: w,
            //   decoration: BoxDecoration(color: Colors.yellow),
            // ),
            // Container(
            //   height: h,
            //   width: w,
            //   decoration: BoxDecoration(color: Colors.green),
            // ),
          ],
        ),
      ),
    );
  }
}
