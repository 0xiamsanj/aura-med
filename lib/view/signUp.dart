import 'package:flutter/material.dart';
import 'package:auramed/export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final _loginController = Get.put(LoginScreenCtrl());

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 70,
              ),
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
                    SizedBox(
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
                height: 50,
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 35),
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Create\nAccount",
                      style: GoogleFonts.raleway(
                          fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Your Email",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
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
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Password",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
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
                            "Create Account",
                            style: GoogleFonts.raleway(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            fixedSize: const Size(330, 50),
                            side: const BorderSide(
                              width: 1.8,
                              color: Color(0xff2184ed),
                            )),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20,
                              child: Image.network(
                                  "https://img.icons8.com/color/48/000000/google-logo.png"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign up with Google",
                              style: GoogleFonts.raleway(
                                  color: const Color(0xff2184ed),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: GoogleFonts.raleway(
                            fontSize: 17, fontWeight: FontWeight.w600)),
                    InkWell(
                        onTap: () {
                          print("22");
                          Get.to(() => loginScreen(),
                              transition: Transition.noTransition,
                              duration: Duration(milliseconds: 0));
                        },
                        child: Text(
                          " Log in",
                          style: GoogleFonts.raleway(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff2184ed)),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
