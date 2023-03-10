import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:madcw2_fitness/widgets/form/form_label.dart';
import 'package:madcw2_fitness/widgets/form/rounded_corner_dropdown.dart';
import 'package:madcw2_fitness/widgets/form/rounded_corner_text_field.dart';
import 'package:madcw2_fitness/widgets/rounded_button.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyMembershipPlansPaymentPage extends StatefulWidget {
  const MyMembershipPlansPaymentPage({Key? key}) : super(key: key);

  @override
  State<MyMembershipPlansPaymentPage> createState() =>
      _MyMembershipPlansPaymentPageState();
}

class _MyMembershipPlansPaymentPageState
    extends State<MyMembershipPlansPaymentPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  var cardNumberFormatter = MaskTextInputFormatter(
      mask: '#### #### #### ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.eager);

  var expiryFormatter = MaskTextInputFormatter(
      mask: '##/##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.eager);

  var cvvFormatter = MaskTextInputFormatter(
      mask: '###',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.eager);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MY MEMBERSHIP PLANS',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _getPaymentFormFragment(context),
        ),
      ),
    );
  }

  /// get personal info fragment
  Column _getPaymentFormFragment(BuildContext context) {
    return Column(
      children: [
        FormBuilder(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormLabel(
                  text: 'Membership Type',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const RoundedCornerDropdown(
                  name: 'membership_type',
                  errorText: 'Select Membership Type',
                  items: [
                    DropdownMenuItem(
                      value: 'plan1',
                      child: Text('Membership Plan 1'),
                    ),
                    DropdownMenuItem(
                      value: 'plan2',
                      child: Text('Membership Plan 2'),
                    ),
                    DropdownMenuItem(
                      value: 'plan3',
                      child: Text('Membership Plan 3'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const FormLabel(
                  text: 'Payment Method',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const RoundedCornerDropdown(
                  name: 'payment_method',
                  errorText: 'Select Payment Method',
                  items: [
                    DropdownMenuItem(value: 'card', child: Text('Card')),
                    DropdownMenuItem(value: 'cash', child: Text('Cash')),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const FormLabel(
                  text: 'Payment Type',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const RoundedCornerDropdown(
                  name: 'payment_type',
                  errorText: 'Select Payment Type',
                  items: [
                    DropdownMenuItem(value: 'Type 1', child: Text('Type 1')),
                    DropdownMenuItem(value: 'Type 2', child: Text('Type 2')),
                    DropdownMenuItem(value: 'Type 3', child: Text('Type 3')),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const FormLabel(
                  text: 'Card Number',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                FormBuilderTextField(
                  name: 'card_number',
                  cursorHeight: 23.0,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    hintText: 'Please enter',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: 'Please enter'),
                  ]),
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  inputFormatters: [cardNumberFormatter],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const FormLabel(
                  text: 'Expiry Date',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const RoundedCornerTextField(
                  errorText: 'Please enter',
                  name: 'expiry_date',
                  textInputType: TextInputType.number,
                  isObscure: false,
                  hintText: 'XX / XX',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const FormLabel(
                  text: 'CVV',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const RoundedCornerTextField(
                  errorText: 'Please enter',
                  name: 'expiry_date',
                  textInputType: TextInputType.number,
                  isObscure: false,
                  hintText: 'XXX',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  width: const Size.fromHeight(40.0).width,
                  // height: 48.0,
                  child: RoundedButton(
                    buttonText: 'Update',
                    onPressed: () {},
                    isDisabled: false,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
