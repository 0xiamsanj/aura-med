import 'package:flutter/material.dart';
import 'package:auramed/export.dart';

final _loginController = Get.put(LoginScreenCtrl());

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Login to AuraMed",
                    style: GoogleFonts.raleway(
                        fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Email",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 330,
                      decoration: BoxDecoration(
                          color: const Color(0xffF0F5FE),
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      child: TextFormField(
                        style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.check),
                          hintStyle: GoogleFonts.raleway(color: Colors.black45),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Obx(() {
                      return Container(
                        width: 330,
                        decoration: BoxDecoration(
                            color: const Color(0xffF0F5FE),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: TextFormField(
                          onTap: () {
                            {
                              _loginController.showemail.value =
                              !_loginController.showemail.value;
                            }
                          },
                          style: GoogleFonts.raleway(
                              color: Colors.black, fontWeight: FontWeight.w500),
                          obscureText: _loginController.showPassword.value,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _loginController.showPassword.value =
                                  !_loginController.showPassword.value;
                                },
                                icon: _loginController.showPassword.value
                                    ? const Icon(Icons.visibility_outlined)
                                    : const Icon(
                                    Icons.visibility_off_outlined)),
                            border: InputBorder.none,
                          ),
                        ),
                      );
                    }),


                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.raleway(
                            color: const Color(0xff2184ed),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      backgroundColor: const Color(0xff2184ed),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      fixedSize: const Size(330, 50),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Log In",
                      style: GoogleFonts.raleway(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 20,
                ),

              ],
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?",
                      style: GoogleFonts.raleway(
                          fontSize: 17,
                          fontWeight: FontWeight.w600)),
                  InkWell(
                      onTap: () {
                        Get.to(() => const SignUp(),
                            transition: Transition.downToUp,
                            duration: const Duration(milliseconds: 0));
                      },
                      child: Text(
                        " Create Account",
                        style: GoogleFonts.raleway(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff2184ed)),
                      ))
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
