import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      elevation: 4.0,
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
                  ? const SizedBox(
                      height: 30,
                      width: 30,
                      child: CupertinoSwitch(value: true, onChanged: null))
                  : Icon(
                      icon,
                      color: !isActive ? Colors.blue.shade800 : Colors.white,
                    ),
              Text(
                title,
                style: TextStyle(
                  color: !isActive ? Colors.black : Colors.white,
                ),
              )
            ]),
      ),
    );
  }
}
