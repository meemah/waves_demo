import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeItemContainer extends StatelessWidget {
  final IconData? icon;
  final bool switchIcon;
  final bool isActive;
  final String title;
  const HomeItemContainer({
    Key? key,
    this.icon,
    required this.title,
    this.switchIcon = false,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shadowColor: Colors.black38,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? Colors.blue.shade800 : Colors.white,
        ),
        width: MediaQuery.of(context).size.width / 3.5,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              switchIcon
                  ? SizedBox(
                      height: 20,
                      width: 35,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: null,
                          activeColor: Colors.blue.shade800,
                        ),
                      ))
                  : Icon(
                      icon,
                      color: !isActive ? Colors.black : Colors.white,
                    ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: !isActive ? Colors.grey : Colors.white,
                ),
              )
            ]),
      ),
    );
  }
}
