import 'package:auramed/controller/sideMenucCrl.dart';
import 'package:flutter/material.dart';
import 'package:auramed/export.dart';

final _menuCtrl = Get.put(sideMenuCtrl());

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(right: Radius.circular(20))),
      width: 270,
      height: MediaQuery.of(context).size.height * 1,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                Image.asset("assets/icons8-heart-health-48.png"),
                Text(
                  "Aura",
                  style: GoogleFonts.raleway(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  "Med",
                  style: GoogleFonts.raleway(
                      fontSize: 25,
                      color: const Color(0xff2184ed),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(onTap: () {
            _menuCtrl.selected.value = 1;
            _menuCtrl.update();
            Navigator.pop(context);
          }, child: Obx(() {
            return AnimatedContainer(
              height: 45,
              width: 250,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 1000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VerticalDivider(
                    color: _menuCtrl.selected.value == 1
                        ? Color(0xff2184ed)
                        : Colors.transparent,
                    width: 2,
                    thickness: 7,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.timer,
                    color: Color(0xff2184ed),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Live Status",
                    style: GoogleFonts.raleway(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          })),
          SizedBox(
            height: 10,
          ),
          GestureDetector(onTap: () {
            _menuCtrl.selected.value = 2;
            _menuCtrl.update();
            Navigator.pop(context);
          }, child: Obx(() {
            return AnimatedContainer(
              height: 50,
              width: 250,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 1000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VerticalDivider(
                    color: _menuCtrl.selected.value == 2
                        ? Color(0xff2184ed)
                        : Colors.transparent,
                    width: 2,
                    thickness: 7,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FaIcon(
                    FontAwesomeIcons.userDoctor,
                    color: Color(0xff2184ed),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Consult a doctor",
                    style: GoogleFonts.raleway(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          })),
          SizedBox(
            height: 10,
          ),
          GestureDetector(onTap: () {
            _menuCtrl.selected.value = 3;
            _menuCtrl.update();
            Navigator.pop(context);
          }, child: Obx(() {
            return AnimatedContainer(
              height: 50,
              width: 250,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 1000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VerticalDivider(
                    width: 2,
                    thickness: 7,
                    color: _menuCtrl.selected.value == 3
                        ? Color(0xff2184ed)
                        : Colors.transparent,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Color(0xff2184ed),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Notifications",
                    style: GoogleFonts.raleway(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          })),
          SizedBox(
            height: 10,
          ),
          GestureDetector(onTap: () {
            _menuCtrl.selected.value = 4;
            _menuCtrl.update();
            Navigator.pop(context);
          }, child: Obx(() {
            return AnimatedContainer(
              height: 50,
              width: 250,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 1000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  VerticalDivider(
                    width: 2,
                    thickness: 7,
                    color: _menuCtrl.selected.value == 4
                        ? Color(0xff2184ed)
                        : Colors.transparent,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.power_settings_new,
                    color: Color(0xff2184ed),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Log Out",
                    style: GoogleFonts.raleway(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          })),
        ],
      ),
    );
  }
}
