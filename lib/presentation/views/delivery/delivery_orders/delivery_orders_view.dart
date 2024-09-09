import 'package:flutter/material.dart';

import '../../../configs/extensions.dart';
import 'widgets/order_card.dart';

class DeliveryOrdersView extends StatelessWidget {
  const DeliveryOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Orders",
          ),
          bottom: const TabBar(
            isScrollable: true,
            enableFeedback: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(text: "Upcoming"),
              Tab(text: "Accepted"),
              Tab(text: "To Deliver"),
              Tab(text: "Delivered"),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
          child: TabBarView(
            children: [
              ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const OrderCard();
                },
              ),
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return const OrderCard();
                      },
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                          onPressed: () {}, child: const Text("Start delivery"))
                      .space(
                    width: double.infinity,
                  ),
                ],
              ),
              ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const OrderCard();
                },
              ),
              ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const OrderCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
