import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/screens/details/widgets/contact_info.dart';
import 'package:chat_app/screens/details/widgets/detail_appbar.dart';
import 'package:chat_app/screens/home/widgets/detail_message.dart';
import 'package:flutter/material.dart';

import '../../models/message.dart';

class DetailPage extends StatelessWidget {
  final Message message;
  const DetailPage({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: [
          const DetailAppbar(),
          ContactInfo(message: message),
          Expanded(
            child: DetailMessage(),
          ),
        ],
      ),
    );
  }
}
