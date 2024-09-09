import 'package:flutter/material.dart';

class CreateOrEditProductView extends StatelessWidget {
  const CreateOrEditProductView({super.key, required this.isEdit});

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isEdit
            ? const Text('Edit product')
            : const Text('Create new product'),
      ),
    );
  }
}
