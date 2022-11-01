import 'package:auramed/controller/consultDocCtrl.dart';
import 'package:flutter/material.dart';
import 'package:auramed/export.dart';

final _consultDoc = Get.put(consultDoc());

class consultDoctor extends StatelessWidget {
  const consultDoctor({Key? key}) : super(key: key);

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
                "Consult a Doctor",
                style: GoogleFonts.raleway(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                "Nearby",
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemCount: _consultDoc.Names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: 130,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.8, color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .13,
                              width: MediaQuery.of(context).size.height * .13,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image:
                                        AssetImage(_consultDoc.Docimage[index]),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _consultDoc.Names[index],
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 0,
                                ),
                                Text(
                                  _consultDoc.spec[index],
                                  style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        height: 37,
                                        width: 70,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: const Color(0xffF0F5FE),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              radius:40,
                                              onTap: () async {
                                                final Uri url = Uri.parse(
                                                    _consultDoc.Number[index]);
                                                launch('tel:$url');
                                              },
                                              child: const Icon(
                                                Icons.call,
                                                color: Color(0xff2184ed),
                                                size: 20,
                                              ),
                                            ),
                                            Text(
                                              "Call",
                                              style: GoogleFonts.raleway(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        height: 37,
                                        width: 75,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: const Color(0xffF0F5FE),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                final Uri url = Uri.parse(
                                                    _consultDoc.Number[index]);
                                                launch('sms:$url');
                                              },
                                              child: const Icon(
                                                Icons.message_outlined,
                                                color: Color(0xff2184ed),
                                                size: 20,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              "Text",
                                              style: GoogleFonts.raleway(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
