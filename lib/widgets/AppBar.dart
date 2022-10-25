import 'package:flutter/material.dart';
import 'package:auramed/export.dart';

class appBar extends StatelessWidget {
  const appBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          Row(
            children: const [
              InkWell(
                child: FaIcon(FontAwesomeIcons.bell),
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                foregroundImage: AssetImage("assets/avatar.jpg"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
