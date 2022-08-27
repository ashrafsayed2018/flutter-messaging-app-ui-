import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/screens/home/widgets/messages.dart';
import 'package:chat_app/screens/home/widgets/recent_contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "دردش مع اصدقائك ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            const RecentContacts(),
            Messages(),
          ],
        ),
      ),
    );
  }
}
