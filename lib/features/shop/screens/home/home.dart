import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
          SPrimaryHeaderContainer(
            child: Container(),
          ),
        ],
      ),
    ));
  }
}
