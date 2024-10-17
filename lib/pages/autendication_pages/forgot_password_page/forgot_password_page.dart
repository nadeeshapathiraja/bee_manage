import 'package:flutter/material.dart';

import '../../../componets/custom_background.dart';
import '../../../componets/custom_button.dart';
import '../../../componets/custom_logowithbg.dart';
import '../../../componets/custom_text.dart';
import '../../../componets/custom_text_form_field.dart';
import '../../../utils/colors.dart';
import '../../../utils/util_functions.dart';
import '../register_page/register_page.dart';

class FrogotPasswordScreen extends StatefulWidget {
  const FrogotPasswordScreen({super.key});

  @override
  State<FrogotPasswordScreen> createState() => _FrogotPasswordScreenState();
}

class _FrogotPasswordScreenState extends State<FrogotPasswordScreen> {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LogoWithBgWidget(),
                    const CustomText(
                      text: "Forgot Password",
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                    const SizedBox(height: 20),

                    CustomTextFormField(
                      lable: "Email",
                      controller: _email,
                      icon: Icons.email,
                    ),

                    const SizedBox(height: 20),

                    //SignIn button
                    CustomButton(
                      // isLoading: value.isLoading,
                      text: "Request Link",
                      color: kMainColor,
                      onTap: () async {},
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

