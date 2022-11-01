import 'package:auramed/controller/upcomingDosesCtrl.dart';
import 'package:auramed/view/qr/qr-1.dart';
import 'package:auramed/view/qr/qr-2.dart';
import 'package:flutter/material.dart';
import 'package:auramed/export.dart';
import 'package:get/get.dart';

import '../controller/timeCtrl.dart';

final _time = Get.put(timeCtrl());
final _ucDoses = Get.put(upcomingDosesCtrl());

class upcomingDoses extends StatelessWidget {
  const upcomingDoses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const SideMenu(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const appBar(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Your Doses",
                style: GoogleFonts.raleway(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .77,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .9,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Morning",
                              style: GoogleFonts.raleway(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFEF5EF),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Dolo -650\n1mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const QR1()));
                                        },
                                        child: const Hero(
                                          tag: "m-1",
                                          child: Icon(
                                            Icons.qr_code_2_outlined,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After breakfast | 9:00am",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.timer_outlined,
                                            color: Colors.black87,
                                            size: 17,
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "2hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // _ucDoses.changeState(),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffD4F2DB),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Alcoliv\n500mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const QR2()));
                                        },
                                        child: const Hero(
                                            tag: "m-2",
                                            child:
                                                Icon(Icons.qr_code_2_outlined)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After breakfast | 9:00am",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "2hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // _ucDoses.changeState(),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffBFD4F5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Levon\n500mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const QR2()));
                                        },
                                        child: const Hero(tag: "m-3",
                                        child: Icon(Icons.qr_code_2_outlined)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After breakfast | 9:00am",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "2hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ) ,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .9,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Afternoon",
                              style: GoogleFonts.raleway(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFEF5EF),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Dolo -650\n1mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const InkWell(
                                        child: Icon(Icons.qr_code_2_outlined),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After lunch | 2:00pm",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "${_time.after
                                                .difference(_time.current)
                                                .inHours}hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffD4F2DB),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Alcoliv\n500mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const InkWell(
                                        child: Icon(Icons.qr_code_2_outlined),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After lunch | 2:00pm",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "${_time.after
                                                .difference(_time.current)
                                                .inHours}hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffBFD4F5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Levon\n500mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const InkWell(
                                        child: Icon(Icons.qr_code_2_outlined),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After lunch | 2:00pm",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "${_time.after
                                                .difference(_time.current)
                                                .inHours}hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .9,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Night",
                              style: GoogleFonts.raleway(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFEF5EF),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // crossAxisAlignment: CrossAxisAlignment.center*,
                                    children: [
                                      Text(
                                        "Dolo -650\n1mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const InkWell(
                                        child: Icon(Icons.qr_code_2_outlined),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After dinner | 2:00pm",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "${_time.night
                                                .difference(_time.current)
                                                .inHours}hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffD4F2DB),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Alcoliv\n500mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const InkWell(
                                        child: Icon(Icons.qr_code_2_outlined),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After dinner | 2:00pm",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "${_time.night
                                                .difference(_time.current)
                                                .inHours}hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(17),
                              height: 140,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: const Color(0xffBFD4F5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Levon\n500mg",
                                        style: GoogleFonts.raleway(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const InkWell(
                                        child: Icon(Icons.qr_code_2_outlined),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "After dinner | 2:00pm",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined,
                                              size: 17, color: Colors.black87),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "${_time.night
                                                .difference(_time.current)
                                                .inHours}hr",
                                            style: GoogleFonts.raleway(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
