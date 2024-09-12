import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testdevdeva/provider/provider.dart';
import 'package:testdevdeva/style/color.dart';
import 'package:testdevdeva/style/font.dart';
import 'package:testdevdeva/widget/header.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            appointment(sizeW),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        color: Constant_color.green,
                        width: 5,
                        margin: const EdgeInsets.only(right: 10),
                      ),
                      Text(
                        "รายการโปลด",
                        style: F().sMedium(16, Colors.black,
                            fWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("แก้ไข"),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
            Consumer<Providers>(builder: (context, viewModel, child) {
              return Column(
                children: [
                  viewModel.hideMenu
                      ? const SizedBox()
                      : SizedBox(
                          height: 120,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: viewModel.listFavoritesModel
                                      .where((item) => item.favorites)
                                      .length +
                                  1,
                              itemBuilder: (context, index) {
                                if (index ==
                                    viewModel.listFavoritesModel
                                        .where((item) => item.favorites)
                                        .length) {
                                  return const SizedBox(
                                    width: 130,
                                    child: Center(
                                      child: Icon(
                                        Icons.add_circle_sharp,
                                        color: Colors.grey,
                                        size: 60,
                                      ),
                                    ),
                                  );
                                }
                                var filteredList = viewModel.listFavoritesModel
                                    .where((item) => item.favorites)
                                    .toList();
                                return cardFavorites(
                                    image: filteredList[index].image,
                                    title: filteredList[index].title);
                              })),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: OutlinedButton(
                        onPressed: () {
                          viewModel.setHideMenu();
                        },
                        child: const Text("ซ่อนเมนูทั้งหมด ")),
                  ),
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 5.0,
                      ),
                      itemCount: viewModel.listFavoritesModel
                          .where((item) => item.simplemenu)
                          .length,
                      itemBuilder: (context, index) {
                        var filteredList = viewModel.listFavoritesModel
                            .where((item) => item.simplemenu)
                            .toList();
                        return cardFavorites(
                            image: filteredList[index].image,
                            title: filteredList[index].title);
                      })
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  InkWell cardFavorites({image, title}) {
    return InkWell(
      child: Container(
        width: 110,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 0.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: F().sMedium(10, Colors.black, fWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Widget appointment(double sizeW) {
    return InkWell(
      onTap: () {
        DefaultTabController.of(context).animateTo(2,);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                width: sizeW * 0.35,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      "images/calendar.png",
                      height: 80,
                    ),
                    const Text(
                      "นัดหมายล่วงหน้า",
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Constant_color.lightgreen,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Constant_color.green,
                        ),
                        Text(
                          "ตารางนัดหมายที่กำลังจะมาถึง",
                          style: F().sMedium(12, Constant_color.green,
                              fWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 3),
                      child: Text(
                        "16 มกราคม 2566, 1030",
                        style: F().sMedium(14, Colors.black,
                            fWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      "แผนกรังสีคลินิกพิเศษ",
                      style: F().sMedium(12, Colors.green),
                    ),
                    Text(
                      "นพ.ยุทธภพ ใต้หลามหาสมุทธ",
                      style: F().sMedium(12, Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "ดูตารางนัดหมายของฉัน",
                            style: F().sMedium(12, Colors.green),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
