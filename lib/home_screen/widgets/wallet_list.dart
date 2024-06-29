import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletListWidget extends StatefulWidget {
  const WalletListWidget({Key? key}) : super(key: key);

  @override
  _WalletListWidgetState createState() => _WalletListWidgetState();
}

class _WalletListWidgetState extends State<WalletListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.padding_8),
      decoration: BoxDecoration(
        color: Colors.grey[300]?.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextIconWidget(
            text: "Cosy areas",
            icon: Icon(
              Icons.shield_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: Dimensions.padding_8,
          ),
          TextIconWidget(
            text: "Price",
            icon: Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: Dimensions.padding_8,
          ),
          TextIconWidget(
            text: "Infrastructure",
            icon: Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: Dimensions.padding_8,
          ),
          TextIconWidget(
            text: "Without any layer",
            icon: SvgPicture.asset(
              "assets/images/ic_stack.svg",
              height: Dimensions.padding_18,
              width: Dimensions.padding_18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class TextIconWidget extends StatelessWidget {
  const TextIconWidget({super.key, required this.text, required this.icon});
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        SizedBox(
          width: Dimensions.padding_8,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        )
      ],
    );
  }
}
