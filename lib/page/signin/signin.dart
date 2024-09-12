import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testdevdeva/page/index.dart';
import 'package:testdevdeva/style/color.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constant_color.green,
          title: const Text(
            "เข้าสู่ระบบ",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(
                  FocusNode(),
                ),
            child: Container(
              width: sizeW,
              height: sizeH,
              child: Stack(
                children: [
                  Image.asset(
                    "images/image.PNG",
                    height: sizeH * 0.45,
                    width: sizeW,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    height: sizeH * 0.50,
                    width: sizeW,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.only(top: 25),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              "ยินดีต้อนรับ",
                              style: TextStyle(
                                  color: Constant_color.green,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: sizeW,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("เลขประจำตัวประชาชน"),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: TextFormField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      keyboardType: TextInputType.number,
                                      maxLength: 13,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Constant_color
                                                .green, // สีของเส้นขอบเมื่อถูกเลือก
                                            width:
                                                2.0, // ความหนาของเส้นขอบเมื่อถูกเลือก
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              8.0), // ปรับโค้งของเส้นขอบ
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text("รหัสผ่าน"),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: TextFormField(
                                      obscureText: hidePassword,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                hidePassword = !hidePassword;
                                              });
                                            },
                                            icon: Icon(
                                              hidePassword
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Constant_color.green,
                                            )),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Constant_color.green,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Constant_color.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  minimumSize: const Size(double.infinity, 50),
                                ),
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const Index()),
                                      (route) => false);
                                },
                                child: const Text(
                                  "เข้าสู่ระบบ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                )),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text("หากยังไม่มีบัญชี"),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "ลงทะเบียน",
                                          style: TextStyle(
                                              color: Constant_color.green,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ))
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "ลืมรหัสผ่าน ?",
                                      style: TextStyle(color: Colors.blue),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
