import 'package:bytebuddies/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class TransactionPin extends StatefulWidget {
  @override
  _TransactionPinState createState() => _TransactionPinState();
}

class _TransactionPinState extends State<TransactionPin> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return TextFormField(
      obscureText: _isObscured,
      decoration: InputDecoration(
        labelText: '-Transaction Pin -',
        labelStyle: const TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
          child: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
        ),
      ),
      style: theme.textTheme.titleSmall?.copyWith(
        color: AppColors.black,
      ),
    );
  }
}
