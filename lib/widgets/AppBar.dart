import 'package:badges/badges.dart';
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
            radius: 40,
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
          Row(
            children:  [
              InkWell(
                child: Badge(
                  elevation: 0,
                  badgeColor:  const Color(0xff2184ed),
                  padding: EdgeInsets.all(2.5),
                  badgeContent: Container(
                    width: 5,
                    height: 5,
                  ),
                    child: FaIcon(FontAwesomeIcons.bell)),
              ),
              SizedBox(
                width: 30,
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
