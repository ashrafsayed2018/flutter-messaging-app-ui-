import 'package:flutter/material.dart';
import '../../../models/user.dart';

class RecentContacts extends StatefulWidget {
  const RecentContacts({Key? key}) : super(key: key);

  @override
  State<RecentContacts> createState() => _RecentContactsState();
}

class _RecentContactsState extends State<RecentContacts> {
  final recentContacts = User.generateUsers();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search icon
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          // list view of recent contacts
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recentContacts.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: recentContacts[index].bgColor,
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      recentContacts[index].iconUrl,
                      width: 5,
                      height: 5,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
