import 'package:flutter/material.dart';

class QR1 extends StatelessWidget {
  const QR1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                const BackButton(),
              ],
            ),
             Center(
              child: Hero(
                tag: "m-1",
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*.8,
                  width: 200,
                  child: Image(
                    image: AssetImage("assets/qr_code/qr-1.jpeg"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
