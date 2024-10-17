import 'package:beetracker/pages/autendication_pages/login_page/login_page.dart';
import 'package:flutter/material.dart';

import '../../../componets/custom_background.dart';
import '../../../componets/custom_button.dart';
import '../../../componets/custom_input.dart';
import '../../../componets/custom_logowithbg.dart';
import '../../../componets/custom_text.dart';
import '../../../componets/custom_text_form_field.dart';
import '../../../utils/colors.dart';
import '../../../utils/util_functions.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _email = TextEditingController();

  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CustomBG(size: size),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const LogoWithBgWidget(),
                    const CustomText(
                      text: "SignUp",
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      lable: "Full Name",
                      controller: _email,
                      prefixIcon: Icons.person,
                    ),

                    CustomTextFormField(
                      lable: "Email",
                      controller: _email,
                      prefixIcon: Icons.email,
                    ),
                    CustomTextFormField(
                      lable: "Phone Number",
                      controller: _email,
                      prefixIcon: Icons.phone,
                    ),
                    CustomTextFormField(
                      lable: "Location",
                      controller: _email,
                      prefixIcon: Icons.location_on,
                    ),
                    CustomInput(
                      controller: _email,
                      lableText: "Password",
                      icon: Icons.lock,
                      isObsecure: isObsecure,
                      iconBtn: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                          // value.changeObscure();
                        },
                        icon: Icon(
                          size: 20,
                          isObsecure ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                    CustomInput(
                      controller: _email,
                      lableText: "Confirm Password",
                      icon: Icons.lock,
                      isObsecure: isObsecure,
                      iconBtn: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                          // value.changeObscure();
                        },
                        icon: Icon(
                          size: 20,
                          isObsecure ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    //SignIn button
                    CustomButton(
                      // isLoading: value.isLoading,
                      text: "Sign Up",
                      color: kMainColor,
                      onTap: () async {},
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: "Already have an Account?  ",
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                        InkWell(
                          onTap: () {
                            UtilFunctions.navigateTo(
                                context, const LoginScreen());
                          },
                          child: RichText(
                            text: const TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
