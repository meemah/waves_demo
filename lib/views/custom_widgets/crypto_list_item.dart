import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waves/views/custom_widgets/spacers.dart';

class CryptoListItem extends StatelessWidget {
  final String cryptoSymbol;
  final String title;
  final String desc;
  final Color bgColor;
  final IconData icon;

  const CryptoListItem(
      {Key? key,
      required this.cryptoSymbol,
      required this.title,
      required this.desc,
      required this.icon,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Stack(children: [
                CircleAvatar(
                  backgroundColor: bgColor,
                  child: Text(cryptoSymbol),
                ),
                Align(alignment: Alignment.bottomRight, child: Icon(icon))
              ]),
              const XMargin(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const YMargin(10),
                  Text(
                    desc,
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
