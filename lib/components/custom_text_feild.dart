import 'package:flutter/material.dart';
import 'package:meri_didi_app/theme.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final TextEditingController editingController;
  final TextInputType? keyboardType;
  final String? hint;
  final bool isValidatorEnabled;
  final IconData? prefixIcon;
  final String? errorText;

  const CustomTextField({
    super.key,
    required this.editingController,
    this.keyboardType = TextInputType.name,
    this.hint,
    this.prefixIcon,
    this.errorText,
    required this.isValidatorEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: editingController,
      decoration: InputDecoration(
        prefixIcon:
            prefixIcon != null
                ? Icon(prefixIcon, color: lightYellowColor)
                : null,
        hintText: hint,
        hintStyle: hintTextStyle,
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: lightYellowColor),
        ),
        focusColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1.5, color: lightYellowColor),
        ),
        hoverColor: Colors.transparent,
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: (value) {
        // do something
      },
      keyboardType: keyboardType,
      validator: (input) {
        if (isValidatorEnabled) {
          if (input!.isEmpty) {
            return hint;
          }
        }
        return null;
      },
    );
  }
}
