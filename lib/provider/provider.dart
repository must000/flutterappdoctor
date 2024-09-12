import 'package:flutter/material.dart';
import 'package:testdevdeva/models/appointment.dart';
import 'package:testdevdeva/models/favorites.dart';

class Providers extends ChangeNotifier {
  final List<FavoritesModel> _listFavoritesModel = [
    FavoritesModel("images/location.png", "Check-in", true, false),
    FavoritesModel("images/checklist.png", "ประวัติการรักษา", true, false),
    FavoritesModel("images/medicine.png", "ประวัติการใช้ยา", true, false),
    FavoritesModel("images/hospital.png", "การรับบริการ", true, true),
    FavoritesModel("images/money.png", "ค่าใช้จ่าย", true, true),
    FavoritesModel(
        "images/medical-report.png", "บันทึกสุขภาพประชาชน", false, true),
    FavoritesModel("images/healthcare.png", "การแพทย์ทางไกล", false, true),
    FavoritesModel("images/tracking-app.png", "นำทาง", false, true),
    FavoritesModel(
        "images/emergency-call.png", "โทรเรียกรถฉุกเฉิน", true, true),
    FavoritesModel("images/logoappdrprom.png", "หมอพร้อม", false, true),
  ];
  List<FavoritesModel> get listFavoritesModel => _listFavoritesModel;

  bool _hideMenu = false;
  bool get hideMenu => _hideMenu;

  setHideMenu() {
    _hideMenu = !hideMenu;
    notifyListeners();
  }

  final List<AppointmentModel> _listAppointmentModel = [
AppointmentModel("คุณมีนัดหมายการพบแพทย์ในวันพรุ่งนี้","ห้องตรวจอายุรกรรมเวลา 09.00 น. - 12.00 น.","ตอนนี้"),
AppointmentModel("คุณมีนัดหมายการพบแพทย์ในอีก 1 วัน","ห้องตรวจอายุรกรรมเวลา 09.00 น. - 12.00 น.","1 สัปดาห์ที่แล้ว")

  ];
  List<AppointmentModel> get listAppointmentModel => _listAppointmentModel;

}
