import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../configs/extensions.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            dense: true,
            leading: SizedBox(
              height: 50,
              width: 50,
            ),
            title: Text(
              "Lemon Herd Roasted chicken",
            ),
            isThreeLine: true,
            subtitle: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                "Location: Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016"),
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(),
            title: const Text('Customer name'),
            isThreeLine: true,
            dense: true,
            subtitle: const Text.rich(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              TextSpan(
                children: [
                  WidgetSpan(
                      child: Icon(
                        CupertinoIcons.location_solid,
                        size: 16,
                      )),
                  TextSpan(
                      text:
                      ' Contrary to popular belief, Lorem Ipsum is not simply random text.'),
                ],
              ),
            ),
            trailing: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: context.colorScheme.primary
                      .withOpacity(0.7),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                icon: const Icon(CupertinoIcons.phone)),
          ),
          const Divider(),
          ListTile(
            dense: true,
            subtitle: const Text(
                'Change the status if you\'re done to take the order to deliver'),
            trailing: ElevatedButton(
                onPressed: () {}, child: const Text("Accept")),
          )
        ],
      ),
    );
  }
}
