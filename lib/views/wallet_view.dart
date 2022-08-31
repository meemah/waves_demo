import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waves/views/custom_widgets/custom_textfield.dart';
import 'package:waves/views/custom_widgets/spacers.dart';

import 'custom_widgets/crypto_list_item.dart';
import 'custom_widgets/home_item.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(CupertinoIcons.bell),
                    CircleAvatar(
                      child: Text("MI"),
                    ),
                  ],
                ),
                const Text("Wallet"),
                Row(
                  children: const [
                    Text(
                      "Mobile Team",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    )
                  ],
                ),
                const YMargin(15),
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HomeItemContainer(
                        title: "Address",
                        icon: Icons.qr_code,
                        isActive: true,
                      ),
                      HomeItemContainer(
                        title: "Aliases",
                        icon: CupertinoIcons.person,
                      ),
                      HomeItemContainer(
                        title: "Balance",
                        switchIcon: true,
                      ),
                    ],
                  ),
                ),
                const YMargin(15),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Tokens"),
                        Container(
                          width: 20.w,
                          height: 4.h,
                          decoration:
                              BoxDecoration(color: Colors.blue.shade800),
                        )
                      ],
                    ),
                    const XMargin(10),
                    const Text(
                      "Leasing",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        hintText: "Search",
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        onValidate: (value) {},
                      ),
                    ),
                    const XMargin(5),
                    const Icon(
                      CupertinoIcons.sort_up,
                      color: Colors.grey,
                    )
                  ],
                ),
                const CryptoListItem(
                    cryptoSymbol: "W",
                    title: "Waves",
                    desc: "5.0004",
                    icon: Icons.check,
                    bgColor: Colors.white),
                const CryptoListItem(
                    cryptoSymbol: "P",
                    title: "Pigeon",
                    desc: "1444.00041",
                    icon: Icons.arrow_right,
                    bgColor: Colors.grey),
                const CryptoListItem(
                    cryptoSymbol: "\$",
                    title: "US Dollar",
                    desc: "199.24",
                    icon: Icons.check,
                    bgColor: Colors.green)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
