import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waves/views/custom_widgets/custom_textfield.dart';
import 'package:waves/views/custom_widgets/empty_collapse_menu.dart';
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
                      radius: 15,
                      child: Text("MI"),
                    ),
                  ],
                ),
                const Text(
                  "Wallet",
                  style: TextStyle(color: Colors.grey),
                ),
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
                        title: "Your Address",
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
                      HomeItemContainer(
                        title: "Review",
                        icon: Icons.arrow_back,
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
                  children: const [
                    Expanded(
                      child: CustomTextField(
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    XMargin(5),
                    Icon(
                      CupertinoIcons.sort_up,
                      color: Colors.grey,
                    )
                  ],
                ),
                const CryptoListItem(
                    cryptoSymbol: "W",
                    title: "Waves 💙",
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
                    bgColor: Colors.green),
                const YMargin(20),
                const EmptyCollapseMenu(title: "Hidden tokens (2)"),
                const YMargin(15),
                const EmptyCollapseMenu(title: "Suspicious tokens(15)"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
