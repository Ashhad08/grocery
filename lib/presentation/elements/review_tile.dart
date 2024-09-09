import 'package:flutter/material.dart';

import '../configs/extensions.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const CircleAvatar(),
          title: Text(
            'Customer name',
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.onSurface,
              fontSize: 14,
            ),
          ),
          trailing: const Text('1 day ago'),
          subtitle: Row(
            children: [
              ...List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
              10.width,
              Text(
                '5.0',
                style: context.textTheme.labelLarge,
              )
            ],
          ),
        ),
        Text(
          'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.bodySmall
              ?.copyWith(color: context.textTheme.bodySmall?.color?.op(0.7)),
        )
      ],
    );
  }
}
