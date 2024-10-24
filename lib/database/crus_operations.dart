// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:students_provider/database/functions.dart';
import 'package:students_provider/database/models.dart';

Future<void> registerStudent(
    BuildContext context,
    String name,
    String place,
    String domain,
    int phone,
    String image,
    GlobalKey<FormState> formKey) async {
  if (image.isEmpty) {
    return;
  }
  if (formKey.currentState!.validate() &&
      name.isNotEmpty &&
      place.isNotEmpty &&
      domain.isNotEmpty &&
      phone != null) {
    final add = Studentupdate(
        domain: domain,
        place: place,
        image: image,
        name: name,
        phone: phone,
        id: -1);
    addStudent(add);
    showSnackBar(context, 'Register Successful', Colors.green);
    Navigator.pop(context);
  }
}

void showSnackBar(BuildContext context, String message, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: Duration(seconds: 2),
    backgroundColor: color,
  ));
}

//editting
Future<void> editStudent(context, File? image, String name, String domain,
    String place, int phone, int id) async {
  final editbox = await Hive.openBox<Studentupdate>('student');
  final existingStudent =
      editbox.values.firstWhere((element) => element.id == id);
  if (existingStudent != null) {
    existingStudent.name = name;
    existingStudent.image = image!.path;
    existingStudent.domain = domain;
    existingStudent.place = place;
    existingStudent.phone = phone;

    await editbox.put(id, existingStudent);
    getStudent();
    Navigator.pop(context);
  }
}

void delete(BuildContext context, int? id) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Delete',
          ),
          content: Text('Remove the Student'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  dlt(context, id);
                },
                child: Text('Yes')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('No'))
          ],
        );
      });
}

Future<void> dlt(context, int? id) async {
  final remove = await Hive.openBox<Studentupdate>('student');
  remove.delete(id);
  getStudent();
  showSnackBar(context, 'Deleted', Colors.red);
  Navigator.pop(context);
}
