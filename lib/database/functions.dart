// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:students_provider/database/models.dart';

ValueNotifier<List<Studentupdate>> studentlist = ValueNotifier([]);
Future<void> addStudent(Studentupdate value) async {
  final studentDb = await Hive.openBox<Studentupdate>('student');
  final id = await studentDb.add(value);
  final studentdata = studentDb.get(id);
  await studentDb.put(
      id,
      Studentupdate(
          domain: studentdata!.domain,
          place: studentdata.place,
          image: studentdata.image,
          name: studentdata.name,
          phone: studentdata.phone,
          id: id));
  getStudent();
}

Future<void> getStudent() async {
  final studentDb = await Hive.openBox<Studentupdate>('student');
  studentlist.value.clear();
  studentlist.value.addAll(studentDb.values);
  studentlist.notifyListeners();
}
