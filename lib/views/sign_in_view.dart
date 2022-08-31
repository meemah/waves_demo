import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waves/views/custom_widgets/custom_textfield.dart';
import 'package:waves/views/custom_widgets/spacers.dart';
import 'package:waves/views/home_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Text(
                    "Log in with email",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.chat_outlined,
                    color: Colors.grey,
                  )
                ],
              ),
              const YMargin(20),
              const CustomTextField(
                fieldName: "Email",
              ),
              const CustomTextField(
                fieldName: "Password",
              ),
              Text(
                "Forgot password?",
                style: TextStyle(color: Colors.blue.shade800),
              ),
              const Spacer(),
              MaterialButton(
                elevation: 0,
                height: 46.h,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                textColor: Colors.white,
                color: Colors.blue.shade800,
                child: const Text(
                  "Continue",
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeView();
                })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
