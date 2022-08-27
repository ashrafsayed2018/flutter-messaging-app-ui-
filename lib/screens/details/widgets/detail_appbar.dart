import 'package:flutter/material.dart';

class DetailAppbar extends StatefulWidget {
  const DetailAppbar({Key? key}) : super(key: key);

  @override
  State<DetailAppbar> createState() => _DetailAppbarState();
}

class _DetailAppbarState extends State<DetailAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "رجوع",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(.5),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "بحث",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
