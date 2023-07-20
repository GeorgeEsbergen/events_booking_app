// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MainTextFormFiled extends StatefulWidget {
  final String label;
  final String hint;
  final IconData? iconShowPass;
  final IconData? prefixicon;
  final IconData? iconHidePass;
  final TextInputType keyboard;
  Function(String)? onChanged;
  bool? show;

  MainTextFormFiled({
    super.key,
    required this.label,
    required this.iconShowPass,
    required this.iconHidePass,
    required this.keyboard,
    this.onChanged,
    required this.hint,
    this.prefixicon,
  });

  @override
  State<MainTextFormFiled> createState() => _MainTextFormFiledState();
}

class _MainTextFormFiledState extends State<MainTextFormFiled> {
  var visabel = false;

  Color gray = Colors.grey;

  Color w = Colors.white;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscuringCharacter: "*",
      obscureText: visabel,
      cursorColor: gray,
      keyboardType: widget.keyboard,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        focusColor: gray,
        labelStyle: TextStyle(color: gray),
        prefixIcon: Icon(
          widget.prefixicon,
          color: gray,
        ),
        suffixIcon: IconButton(
          icon: visabel
              ? Icon(
                  widget.iconHidePass,
                  color: gray,
                )
              : Icon(
                  widget.iconShowPass,
                  color: gray,
                ),
          onPressed: () {
            {
              visabel = !visabel;

              setState(() {});
            }
          },
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: gray,
            )),
      ),
    );
  }
}

class SmallTextFormFiled extends StatelessWidget {
  final String hint;
  final TextInputType keyboard;
  Function(String)? onChanged;
  Color gray = Colors.grey;

  Color w = Colors.white;

  SmallTextFormFiled({super.key, required this.hint, required this.keyboard});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      textAlign: TextAlign.center,
      cursorColor: gray,
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: hint,
        focusColor: gray,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: gray,
            )),
      ),
    );
  }
}

class SearchTextFormFiled extends StatelessWidget {
  final String hint;
  final TextInputType keyboard;
  Function(String)? onChanged;
  Color gray = Colors.grey;

  Color w = Colors.white;

  SearchTextFormFiled(
      {super.key,
      required this.hint,
      required this.keyboard,
      this.searchIconColor, this.hintColor});
  final Color? searchIconColor;
  final Color? hintColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      textAlign: TextAlign.start,
      cursorColor: gray,
      keyboardType: keyboard,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
            color: hintColor ?? Colors.white.withOpacity(0.4), fontSize: 20),
        focusColor: gray,
        prefixIcon: Icon(
          Icons.search_sharp,
          color: searchIconColor ?? Colors.white,
          size: 24,
        ),
        border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            )),
      ),
    );
  }
}
