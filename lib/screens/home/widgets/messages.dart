import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/screens/details/detail.dart';
import 'package:flutter/material.dart';

import '../../../models/message.dart';

class Messages extends StatelessWidget {
  Messages({Key? key}) : super(key: key);
  final List<Message> messagesList = Message.generateHomePageMessages();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          child: _buildMessages()),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: messagesList.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 30,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return _buildMessage(index, context);
      },
    );
  }

  Widget _buildMessage(index, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(
                message: messagesList[index],
              );
            },
          ),
        );
      },
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: messagesList[index].user.bgColor,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              child: Image.network(
                messagesList[index].user.iconUrl,
                width: 30,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${messagesList[index].user.firstName} ${messagesList[index].user.lastName}",
                      style: const TextStyle(
                        fontSize: 16,
                        color: kPrimaryDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      messagesList[index].lastTime,
                      style: const TextStyle(
                        color: kGreyLight,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  messagesList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: kPrimaryDark,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
