import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RoundedCornerTextField extends StatelessWidget {
  final String name;
  final String errorText;
  final TextInputType textInputType;
  final bool isObscure;
  final String hintText;

  const RoundedCornerTextField({
    Key? key,
    required this.name,
    required this.errorText,
    required this.textInputType,
    required this.isObscure,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      cursorHeight: 23.0,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16.0,
          )),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: errorText),
      ]),
      keyboardType: textInputType,
      obscureText: isObscure,
    );
  }
}