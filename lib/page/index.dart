import 'package:flutter/material.dart';
import 'package:testdevdeva/page/appointment/appointment.dart';
import 'package:testdevdeva/page/main/mainpage.dart';
import 'package:testdevdeva/page/publicrelations/publicrelations.dart';
import 'package:testdevdeva/page/setting/setting.dart';
import 'package:testdevdeva/style/color.dart';
import '../style/font.dart';

class Index extends StatefulWidget {
  final bool? loadData;
  const Index({super.key, this.loadData});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          body: const TabBarView(
            children: [
              MainPage(),
              Publicrelations(),
              Appointment(),
              Publicrelations(),
              Settings()
            ],
          ),
          bottomNavigationBar: TabBar(
            isScrollable: false,
            physics: const NeverScrollableScrollPhysics(),
            indicatorColor: Colors.transparent,
            labelColor: Constant_color.green,
            unselectedLabelColor: Colors.black,
            labelStyle: F().sMedium(8, Colors.grey),
            tabs: const[
              Tab(
                text: "หน้าหลัก",
                icon: Icon(Icons.home),
              ),
              Tab(text: "ประชาสัมพันธ์", icon: Icon(Icons.chat)),
              Tab(text: "แจ้งเตือน", icon: Icon(Icons.notifications_active)),
              Tab(text: "ข้อมูลของฉัน", icon: Icon(Icons.person)),
              Tab(text: "ตั้งค่า", icon: Icon(Icons.settings)),
            ],
          ),
        ));
  }
}
