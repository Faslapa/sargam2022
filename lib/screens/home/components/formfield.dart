import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isRequired;
  const CustomTextField(
      {required this.title,
      required this.controller,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      Key? key,
      this.isRequired = true})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.headline1?.copyWith(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          cursorColor: Colors.orange,
          validator: (value) {
            String phone = r'(^[0-9]{10}$)';
            RegExp phoneregExp = new RegExp(phone);
            String emailValid =
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
            RegExp emailregExp = new RegExp(emailValid);
            if (widget.isRequired == true) {
              if (value == null || value.isEmpty) {
                return 'This field is mandatory';
              } else if (!phoneregExp.hasMatch(value) &&
                  (widget.title == "Phone Number")) {
                return 'Please enter a valid mobile number';
              } else if (!emailregExp.hasMatch(value) &&
                  (widget.title == "Email address")) {
                return 'Please enter a valid email id';
              }
            }
            return null;
          },
          decoration: InputDecoration(
            isDense: true,
            
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            errorStyle: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Colors.red, fontSize: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 173, 171, 171),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              
              borderSide: const BorderSide(
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
