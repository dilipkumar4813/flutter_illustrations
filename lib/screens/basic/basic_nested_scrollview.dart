import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/app_strings.dart';

class BasicNestedScrollView extends StatelessWidget {
  const BasicNestedScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // A flexible app bar
          SliverAppBar(
            title: Text(AppStrings.appBar),
            expandedHeight: 200,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 500,
                        color: Colors.teal,
                      ),
                      Container(
                        height: 500,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
