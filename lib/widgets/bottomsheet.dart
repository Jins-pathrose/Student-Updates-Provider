// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';

void bottomSheet(context, String name, String domain, String place, int phone,
    String image) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext builder) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 93, 172, 237),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          height: 360,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: FileImage(File(image)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                name.toUpperCase(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Domain : $domain',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Phone : $phone',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Place : $place',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
              ),
            ],
          ),
        );
      });
}
