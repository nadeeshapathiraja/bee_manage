import 'package:beetracker/pages/home_page/home_page.dart';
import 'package:beetracker/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../componets/custom_button.dart';
import '../../../componets/custom_input.dart';
import '../../../componets/custom_logowithbg.dart';
import '../../../componets/custom_text.dart';
import '../../../componets/custom_text_form_field.dart';
import '../../../utils/util_functions.dart';
import '../forgot_password_page/forgot_password_page.dart';
import '../register_page/register_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();

  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Image.asset(
              "assets/images/bg.jpg",

              // width: 400,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoWithBgWidget(),
                    const CustomText(
                      text: "SignIn",
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                    const SizedBox(height: 20),

                    CustomTextFormField(
                      lable: "Email",
                      controller: _email,
                      prefixIcon: Icons.email,
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

                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CustomText(
                          text: "Forgot Password?  ",
                          fontSize: 12,
                        ),
                        InkWell(
                          onTap: () {
                            UtilFunctions.navigateTo(
                                context, const FrogotPasswordScreen());
                          },
                          child: RichText(
                            text: const TextSpan(
                              text: 'Click here..',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 20),

                    //SignIn button
                    CustomButton(
                      // isLoading: value.isLoading,
                      text: "Sign In",
                      color: kMainColor,
                      onTap: () async {
                        UtilFunctions.pushRemoveNavigation(
                            context, const HomeScreen());
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: "Already haven't an Account?  ",
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                        InkWell(
                          onTap: () {
                            UtilFunctions.navigateTo(
                                context, const RegisterScreen());
                          },
                          child: RichText(
                            text: const TextSpan(
                              text: 'Sign Up',
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

