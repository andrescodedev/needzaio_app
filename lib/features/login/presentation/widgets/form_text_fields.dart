import 'package:flutter/material.dart';

class FormTextFields extends StatefulWidget {
  final IconData textFieldIcon;
  final String textFieldLabel, errorText;
  final bool obscureText;
  final Color borderColor, textColor, focusColor;
  final onChanged;

  FormTextFields({
    @required this.textFieldIcon,
    @required this.textFieldLabel,
    @required this.onChanged,
    this.obscureText = false,
    this.errorText,
    this.borderColor,
    this.textColor,
    this.focusColor,
  });

  @override
  _FormTextFieldsState createState() => _FormTextFieldsState();
}

class _FormTextFieldsState extends State<FormTextFields> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        icon: Icon(
          widget.textFieldIcon,
          color: Theme.of(context).primaryColor,
        ),
        labelText: widget.textFieldLabel,
        errorText: widget.errorText,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor,
          ),
        ),
        errorStyle: TextStyle(
          color: widget.textColor,
        ),
        focusColor: widget.focusColor,
      ),
      onChanged: widget.onChanged,
    );
  }
}
