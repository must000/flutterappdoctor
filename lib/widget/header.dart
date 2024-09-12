import 'package:flutter/material.dart';
import 'package:testdevdeva/style/color.dart';
import 'package:testdevdeva/style/font.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: sizeW,
      color: Constant_color.green,
      padding: const EdgeInsets.only(top: 40, left: 5, right: 5, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(
                        size: 50,
                        Icons.account_circle,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "นายสมบูรณ์ แข็งแรงดี",
                          style: F().sMedium(14, Colors.white),
                        ),
                        Text(
                          "HN : B13965/12",
                          style: F().sMedium(9, Colors.white,
                              fWeight: FontWeight.w300),
                        ),
                        Text(
                          "ชาย - เกิด 25/08/1967",
                          style: F().sMedium(12, Colors.white,
                              fWeight: FontWeight.w300),
                        ),
                        Text(
                          "32 ปี 3 เดือน 13 วัน",
                          style: F().sMedium(12, Colors.white,
                              fWeight: FontWeight.w300),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  color: Constant_color.green, width: 0.5))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("หมายเลข",
                              style: F().sMedium(12, Colors.black54,
                                  fWeight: FontWeight.bold)),
                                  const SizedBox(height: 8,),
                          Text("A132",
                              style: F().sMedium(35, Constant_color.green,
                                  fWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("แตะเพื่อดูรายละเอียด",
                                  style: F().sMedium(8, Colors.black54,
                                      fWeight: FontWeight.w300)),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("จำนวนคิวที่เหลือ",
                                        style: F().sMedium(
                                          10,
                                          Colors.black54,
                                          fWeight: FontWeight.w600
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("เวลาที่รอคิว(นาที)",
                                        style: F().sMedium(
                                          10,
                                          Colors.black54,
                                          fWeight: FontWeight.w600
                                        )),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      color: Constant_color.green,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                      color: Constant_color.green,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
