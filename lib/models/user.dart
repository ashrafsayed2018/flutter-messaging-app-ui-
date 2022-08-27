import 'package:flutter/material.dart';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.iconUrl,
    required this.bgColor,
  });

  static List<User> generateUsers() {
    return [
      User(
        id: 1,
        firstName: "اشرف",
        lastName: "سيد",
        iconUrl: "https://xsgames.co/randomusers/assets/avatars/male/1.jpg",
        bgColor: const Color(0xffB85252),
      ),
      User(
        id: 2,
        firstName: "ايه",
        lastName: "عمر",
        iconUrl: "https://xsgames.co/randomusers/assets/avatars/female/1.jpg",
        bgColor: const Color(0xffB95252),
      ),
      User(
        id: 3,
        firstName: "تامر",
        lastName: "على",
        iconUrl: "https://xsgames.co/randomusers/assets/avatars/male/2.jpg",
        bgColor: const Color.fromARGB(255, 101, 82, 184),
      ),
      User(
        id: 4,
        firstName: "شيرين",
        lastName: "عادل",
        iconUrl: "https://xsgames.co/randomusers/assets/avatars/female/2.jpg",
        bgColor: const Color.fromARGB(255, 82, 184, 123),
      ),
      User(
        id: 5,
        firstName: "رائد",
        lastName: "سعيد",
        iconUrl: "https://xsgames.co/randomusers/assets/avatars/male/3.jpg",
        bgColor: const Color.fromARGB(255, 82, 169, 184),
      ),
      User(
        id: 6,
        firstName: "سماح",
        lastName: "منصور",
        iconUrl: "https://xsgames.co/randomusers/assets/avatars/female/3.jpg",
        bgColor: const Color.fromARGB(255, 174, 184, 82),
      ),
      User(
        id: 7,
        firstName: "وليد",
        lastName: "عبد الرحمن",
        iconUrl: "https://xsgames.co/randomusers/assets/avatars/male/4.jpg",
        bgColor: const Color.fromARGB(255, 11, 188, 215),
      ),
    ];
  }
}
