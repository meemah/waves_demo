import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waves/views/custom_widgets/spacers.dart';

class CustomTextField extends StatelessWidget {
  final String fieldName;
  final bool isAutoFocus;

  final TextEditingController? controller;

  final String? hintText;
  final bool obscureText;
  final Function()? onTap;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  const CustomTextField({
    Key? key,
    this.fieldName = "",
    this.isAutoFocus = false,
    this.obscureText = false,
    this.controller,
    this.hintText,
    this.onTap,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> showPassword = ValueNotifier(false);
    var outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(6),
    );
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fieldName,
            style: TextStyle(fontSize: 11.sp, color: Colors.grey),
          ),
          const YMargin(5),
          ValueListenableBuilder(
              valueListenable: showPassword,
              builder: (BuildContext context, bool show, Widget? child) {
                return TextFormField(
                  readOnly: readOnly,
                  controller: controller,
                  obscureText: show,
                  onTap: onTap,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 25.h, //25
                      minHeight: 10.h,
                      minWidth: 25.w,
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: 25.h,
                      minHeight: 25.h,
                      minWidth: 25.w,
                    ),
                    prefixIcon: prefixIcon,
                    suffixIcon: obscureText == false
                        ? suffixIcon
                        : GestureDetector(
                            onTap: () {
                              showPassword.value = !showPassword.value;
                            },
                            child: Padding(
                                padding: const EdgeInsets.only(right: 14),
                                child: Icon(
                                  showPassword.value
                                      ? Icons.visibility_off
                                      : Icons.visibility_outlined,
                                  color: Colors.black,
                                  size: 23.sp,
                                )),
                          ),
                    hintStyle: TextStyle(
                        fontSize: 13.sp, color: const Color(0xffD2D2D2)),
                    hintText: hintText ?? fieldName,
                    enabledBorder: outlineInputBorder,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                    border: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
