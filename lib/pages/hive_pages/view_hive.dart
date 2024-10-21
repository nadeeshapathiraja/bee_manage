import 'package:flutter/material.dart';

import '../../componets/custom_appbar.dart';

class DisplayHiveDetails extends StatefulWidget {
  const DisplayHiveDetails({super.key});

  @override
  State<DisplayHiveDetails> createState() => _DisplayHiveDetailsState();
}

class _DisplayHiveDetailsState extends State<DisplayHiveDetails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "View Hive",
      ),
      body: Center(
        child: Text("View details"),
      ),
    );
  }
}
