import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class DetailMessage extends StatelessWidget {
  final myId = 1;
  final List<Message> messageList = Message.generateMessageFromUser();
  final _scrollController = ScrollController();

  DetailMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reversedList = List.from(messageList.reversed);
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 80),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView.separated(
              controller: _scrollController,
              reverse: true,
              padding: EdgeInsets.zero,
              itemCount: reversedList.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return reversedList[index].user.id == myId
                    ? _buildRecievedText(reversedList[index])
                    : _buildSenderText(reversedList[index]);
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: MediaQuery.of(context).size.width * .85,
              child: Stack(
                children: [
                  TextField(
                    onTap: () {
                      _scrollController.animateTo(0,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeIn);
                    },
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      hintText: "اكتب رسالتك",
                      hintStyle: TextStyle(
                        color: kPrimaryDark.withOpacity(.3),
                        fontSize: 14,
                      ),
                      fillColor: kGreyLight.withOpacity(.2),
                      filled: true,
                      contentPadding: const EdgeInsets.all(18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 8,
                    child: Container(
                      width: 35,
                      height: 35,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: kPrimary,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildSenderText(Message message) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          message.isContinue
              ? const SizedBox(
                  width: 40,
                )
              : Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: message.user.bgColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    message.user.iconUrl,
                    width: 30,
                  ),
                ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kGreyLight.withOpacity(.3),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 180),
              child: Text(
                message.lastMessage,
                style: const TextStyle(
                  color: kPrimaryDark,
                  height: 1.5,
                ),
              ),
            ),
          )
        ],
      ),
      Text(
        message.lastTime,
        style: const TextStyle(
          color: kGreyLight,
          fontSize: 12,
        ),
      ),
    ],
  );
}

Widget _buildRecievedText(Message message) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        message.lastTime,
        style: const TextStyle(color: kGreyLight),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: kPrimaryLight,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          child: Text(
            message.lastMessage,
            style: const TextStyle(
              height: 1.5,
              color: kPrimaryDark,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      )
    ],
  );
}
