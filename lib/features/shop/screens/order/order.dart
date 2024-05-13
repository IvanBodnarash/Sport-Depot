import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/features/shop/screens/order/widgets/orders_list.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: SAppBar(
        title:
            Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),

        // Order List Items
        child: SOrderListItems(),
      ),
    );
  }
}
