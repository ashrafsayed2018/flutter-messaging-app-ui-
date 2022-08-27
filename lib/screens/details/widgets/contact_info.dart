import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final Message message;
  const ContactInfo({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${message.user.firstName} ${message.user.lastName}",
            style: const TextStyle(
              height: 1.2,
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              _buildCallButton(Icons.phone),
              const SizedBox(width: 10),
              _buildCallButton(Icons.video_camera_back)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCallButton(IconData iconData) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(.3),
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
