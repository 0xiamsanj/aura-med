import 'package:flutter/material.dart';

class QR2 extends StatelessWidget {
  const QR2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                BackButton(),
              ],
            ),
            Center(
              child: Hero(
                tag: "m-2",
                child: Container(
                  height: MediaQuery.of(context).size.height*.8,
                  width: 200,
                  child: const Image(image: AssetImage("assets/qr_code/alco.jpeg"),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
