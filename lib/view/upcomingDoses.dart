import 'package:flutter/material.dart';
import 'package:auramed/export.dart';

final scaffoldKey = GlobalKey<ScaffoldState>();

class upcomingDoses extends StatelessWidget {
  const upcomingDoses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
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
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .78,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 130,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xffFEF5EF),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Acetaminophen\n10mg",
                            style: GoogleFonts.raleway(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Before lunch | 12:00pm",
                                style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timer_outlined,
                                      color: Colors.black87),
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
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 130,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xffD4F2DB),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Naproxen\n5mg",
                            style: GoogleFonts.raleway(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "After lunch | 2:00pm",
                                style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timer_outlined,
                                      color: Colors.black87),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "4hr",
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
                      height: 130,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xffBFD4F5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Entresto\n7mg",
                            style: GoogleFonts.raleway(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Before dinner | 8:00pm",
                                style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timer_outlined,
                                      color: Colors.black87),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "10hr",
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
                      height: 130,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xffCFBCDF),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Omeprazole\n5mg",
                            style: GoogleFonts.raleway(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Before dinner | 8:00pm",
                                style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timer_outlined,
                                      color: Colors.black87),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "10hr",
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
                      height: 130,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xffD6CFCB),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lexapro\n7mg",
                            style: GoogleFonts.raleway(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "After dinner | 9:00pm",
                                style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timer_outlined,
                                      color: Colors.black87),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "11hr",
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
                      height: 130,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xffDBC2CF),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Meloxicam\n7mg",
                            style: GoogleFonts.raleway(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "After dinner | 9:00pm",
                                style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timer_outlined,
                                      color: Colors.black87),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "11hr",
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
