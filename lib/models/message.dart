import 'package:chat_app/models/user.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message({
    required this.user,
    required this.lastMessage,
    required this.lastTime,
    this.isContinue = false,
  });

  // fake data fetch the data from your database instead
  static List<Message> generateHomePageMessages() {
    return [
      Message(user: users[0], lastMessage: "مساء الخير ", lastTime: "10:32"),
      Message(
          user: users[1],
          lastMessage: "مبسوط جدا اني سمعت رسالتك",
          lastTime: "10:35"),
      Message(
          user: users[2],
          lastMessage: "فيديو جميل جدا تستطيع رفعه على اليويتوب",
          lastTime: "10:38"),
      Message(
          user: users[3],
          lastMessage: "لا لم استطيع المجئ في الوقت المناسب",
          lastTime: "10:42"),
      Message(
          user: users[4],
          lastMessage:
              "استطيع اصلاح اللاب توب في الوقت المناسب ان امهلتني بعض الوقت ",
          lastTime: "10:58"),
      Message(
          user: users[5],
          lastMessage: "كم من الوقت مر على اخر مره التقينا ",
          lastTime: "11:08"),
    ];
  }
  // message for first user

  static List<Message> generateMessageFromUser() {
    return [
      Message(user: users[1], lastMessage: "هلا بالغالي", lastTime: "10.44"),
      Message(
        user: users[1],
        lastMessage: " منور والله",
        lastTime: "10.55",
        isContinue: true,
      ),
      Message(
        user: users[1],
        lastMessage: " ايه الاخبار ان شاء الله",
        lastTime: "10.58",
        isContinue: true,
      ),
      Message(
          user: me, lastMessage: " هل انت بخير الحمد لله", lastTime: "11.04"),
      Message(
          user: users[1], lastMessage: " يلا اوك يا باشا", lastTime: "11.14"),
      Message(
        user: users[1],
        lastMessage: "كم مره عملت نفس هذا ",
        lastTime: "11.20",
        isContinue: true,
      ),
    ];
  }
}

List<User> users = User.generateUsers();

User me = users[0];
