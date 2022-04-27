import 'package:flutter/material.dart';

class UserInfoRow extends StatelessWidget {
  const UserInfoRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      //color: Colors.green,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Container(
          //color: Colors.orange,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "今日已撥打0次",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.diamond,
                      color: Colors.white,
                    ),
                    Text(
                      "5.0",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
        Expanded(
            child: Container(
          //color: Colors.pink,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.logo_dev,
                    color: Colors.white,
                  ),
                  Text(
                    "1級新手Doc",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    color: Colors.white,
                  )
                ],
              ),
              // for notification
              Row(
                children: [],
              )
            ],
          ),
        )),
      ]),
    );
  }
}
