import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testdevdeva/provider/provider.dart';
import 'package:testdevdeva/style/font.dart';
import 'package:testdevdeva/widget/dialog.dart';
import 'package:testdevdeva/widget/header.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ล่าสุด",
                  style: F().sMedium(20, Colors.grey, fWeight: FontWeight.w700),
                ),
                Consumer<Providers>(builder: (context, viewModel, child) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.listAppointmentModel.length,
                      itemBuilder: (context, index) {
                        return cardAppointment(
                          title: viewModel.listAppointmentModel[index].title,
                          detail: viewModel.listAppointmentModel[index].detail,
                          time: viewModel.listAppointmentModel[index].time,
                        );
                      });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }

  InkWell cardAppointment({title, detail, time}) {
    return InkWell(
      onTap: ()=>{
        MyDialog().simpleDialog(context,title,detail,time)
      },
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 100,
                padding: const EdgeInsets.all(10),
                child: Image.asset("images/calendar.png")),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: F()
                            .sMedium(14, Colors.black, fWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        detail,
                        style: F()
                            .sMedium(11, Colors.black, fWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Text(
                  time,
                  style: F().sMedium(9, Colors.black, fWeight: FontWeight.w300),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
