import 'package:auramed/controller/sideMenucCrl.dart';
import 'package:auramed/view/consultDoctor.dart';
import 'package:auramed/view/homeScreen.dart';
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
          const SizedBox(
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
          const SizedBox(
            height: 15,
          ),
          GestureDetector(onTap: () {
            Navigator.pop(context);
            _menuCtrl.selected.value = 1;
            _menuCtrl.update();
            Get.to(() => const homeScreen(),
                transition: Transition.noTransition,
                duration: const Duration(milliseconds: 0));
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
                        ? const Color(0xff2184ed)
                        : Colors.transparent,
                    width: 2,
                    thickness: 7,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
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
          const SizedBox(
            height: 10,
          ),
          GestureDetector(onTap: () {
            _menuCtrl.selected.value = 2;
            _menuCtrl.update();
            Navigator.pop(context);
            Get.to(() => const upcomingDoses(),
                transition: Transition.fadeIn,
                duration: const Duration(milliseconds: 1000));
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
                    color: _menuCtrl.selected.value == 2
                        ? const Color(0xff2184ed)
                        : Colors.transparent,
                    width: 2,
                    thickness: 7,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    FontAwesomeIcons.capsules,
                    color: Color(0xff2184ed),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Your Doses",
                    style: GoogleFonts.raleway(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          })),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(onTap: () {
            _menuCtrl.selected.value = 3;
            _menuCtrl.update();
            Get.to(() => const consultDoctor(),
                transition: Transition.noTransition,
                duration: const Duration(milliseconds: 0));
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
                    color: _menuCtrl.selected.value == 3
                        ? const Color(0xff2184ed)
                        : Colors.transparent,
                    width: 2,
                    thickness: 7,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const FaIcon(
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
          const SizedBox(
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
                        ? const Color(0xff2184ed)
                        : Colors.transparent,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
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
          const SizedBox(
            height: 10,
          ),
          GestureDetector(onTap: () {
            _menuCtrl.selected.value = 5;

            Get.to(() => loginScreen(),
                transition: Transition.noTransition,
                duration: Duration(milliseconds: 0));
            _menuCtrl.selected.value=1;
            _menuCtrl.update();
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
                    color: _menuCtrl.selected.value == 5
                        ? const Color(0xff2184ed)
                        : Colors.transparent,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
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
