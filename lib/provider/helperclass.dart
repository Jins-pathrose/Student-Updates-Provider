import 'dart:io';

import 'package:flutter/material.dart';
import 'package:students_provider/database/models.dart';

class StudentProvider extends ChangeNotifier {
  File? selectedimage;
  String? onserch;
  List<Studentupdate> _studentlist = [];
  List<Studentupdate> get studentserachlist => _studentlist;

  getimage(File? image) {
    selectedimage = image;
    notifyListeners();
  }

  getsearchText(String? str) {
    onserch = str;
    notifyListeners();
  }

  searchStudent(List<Studentupdate> newlist) {
    _studentlist = newlist;
  }
}
