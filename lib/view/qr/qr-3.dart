import 'package:flutter/material.dart';

class QR3 extends StatelessWidget {
  const QR3({Key? key}) : super(key: key);

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
                tag: "m-3",
                child: Container(
                  height: MediaQuery.of(context).size.height*.8,
                  width: 200,
                  child: const Image(image: AssetImage("assets/qr_code/levon.png"),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
