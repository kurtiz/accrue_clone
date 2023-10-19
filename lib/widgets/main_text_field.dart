import "package:flutter/material.dart";

import "../utilities/text_styles.dart";
import "../utilities/theme_colors.dart";

class MainTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  const MainTextField(
      {super.key, this.obscureText = false, required this.hintText});

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  // late bool _isObscure;
  late bool _isPasswordVisible = false;
  //
  // void _toggleObscureText() {
  //   setState(() {
  //     _isObscure = !widget.obscureText;
  //   });
  // }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
      // _toggleObscureText();
    });
  }
  //
  // @override
  // void initState() {
  //   setState(() {
  //     _isObscure = widget.obscureText;
  //   });
  //
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    bool isObscure = widget.obscureText && !_isPasswordVisible;
    return TextField(
      cursorColor: Colors.black,
      obscureText: isObscure,
      enableSuggestions: !isObscure,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 24, right: 24, top: 15, bottom: 15),
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.black,
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: secondaryBorderColor, width: 2),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(20)),
          hintText: widget.hintText,
          hintStyle: textSubText,
          suffixIcon: isObscure || _isPasswordVisible
              ? (_isPasswordVisible
                  ? IconButton(
                      onPressed: () {
                        _togglePasswordVisibility();
                      },
                      icon: const Icon(Icons.visibility_outlined),
                    )
                  : IconButton(
                      onPressed: () {
                        _togglePasswordVisibility();
                      },
                      icon: const Icon(
                          Icons.visibility_off_outlined,
                        color: Colors.grey,

                      ),
                    ))
              : null),
    );
  }
}
