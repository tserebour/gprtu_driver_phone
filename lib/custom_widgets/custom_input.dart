import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomInput extends StatefulWidget {
  bool obscureText;
  final bool obscurableText;
  final String hintText;
  final String label;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String> onChanged;

  CustomInput({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.label,
    this.obscurableText = false,
    this.validator, required this.onChanged,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late TextEditingController _controller;


  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_handleChange);
  }

  @override
  void dispose() {
    _controller.removeListener(_handleChange);
    _controller.dispose();
    super.dispose();
  }

  void _handleChange() {
    widget.onChanged(_controller.text.trim());
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: double.infinity,
      height: height * 0.12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: width * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(height * 0.01),

          Expanded(
            child: TextFormField(

              controller: _controller,

              obscureText: widget.obscureText,
              validator: widget.validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                suffix: widget.obscurableText
                    ? InkWell(
                  onTap: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  child: Icon(
                    widget.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColor,
                  ),
                )
                    : const Icon(null),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: width * 0.03,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
