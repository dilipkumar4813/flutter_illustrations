import 'package:flutter/material.dart';

class BasicNestedScrollView extends StatelessWidget {
  const BasicNestedScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // A flexible app bar
          const SliverAppBar(
            title: Text('App Bar'),
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
