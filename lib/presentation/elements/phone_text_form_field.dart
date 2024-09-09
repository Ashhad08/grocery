import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberTextFormField extends StatelessWidget {
  const PhoneNumberTextFormField({
    super.key,
    required this.hintText,
    this.onSaved,
    this.initialNumber,
    this.isRequired = false,
  });

  final String hintText;
  final bool isRequired;
  final PhoneNumber? initialNumber;
  final void Function(PhoneNumber)? onSaved;

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      selectorConfig: const SelectorConfig(
        setSelectorButtonAsPrefixIcon: true,
        leadingPadding: 16,
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        useEmoji: true,
      ),
      ignoreBlank: !isRequired,
      autoValidateMode: AutovalidateMode.disabled,
      textFieldController: TextEditingController(),
      onSaved: onSaved,
      spaceBetweenSelectorAndTextField: 0,
      initialValue: initialNumber ?? PhoneNumber(isoCode: 'GB'),
      inputDecoration: InputDecoration(
        enabled: false,
        hintText: hintText,
      ),
      keyboardType:
          const TextInputType.numberWithOptions(signed: true, decimal: true),
      onInputChanged: (PhoneNumber value) {},
    );
  }
}
