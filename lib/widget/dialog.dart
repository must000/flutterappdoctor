import 'package:flutter/material.dart';
import 'package:testdevdeva/style/color.dart';
import 'package:testdevdeva/style/font.dart';

class MyDialog {
  simpleDialog(BuildContext context, String title, String detail, String time) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text(
            time,
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: F().sMedium(16, Colors.black, fWeight: FontWeight.w600),
              ),
              Text(
                detail,
                style: F().sMedium(12, Colors.black),
              ),
            ],
          ),
          actions: [
            Center(
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Constant_color.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "OK",
                      style: F().sMedium(16, const Color(0xffFFFFFF),
                          fWeight: FontWeight.w500),
                    )),
              ),
            )
          ]),
    );
  }
}
