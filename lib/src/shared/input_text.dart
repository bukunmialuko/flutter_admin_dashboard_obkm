import 'package:admin_dashboard/src/res/colors.dart';
import 'package:admin_dashboard/src/res/styles.dart';
import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool isPassword;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final FormFieldSetter<String>? onSaved;
  final FocusNode? focusNode;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final String? textPlaceholder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? initialValue;
  final bool enabled;
  final TextEditingController? controller;

  const InputText({
    super.key,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.onChanged,
    this.onEditingComplete,
    this.onSaved,
    this.focusNode,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textPlaceholder,
    this.suffixIcon,
    this.prefixIcon,
    this.initialValue,
    this.enabled = true,
    this.controller,
  });

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textFieldTextStyle(context),
      initialValue: widget.initialValue,
      controller: widget.controller,
      enabled: widget.enabled,
      focusNode: _focusNode,
      decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          prefix: widget.prefixIcon,
          // prefixIconConstraints: BoxConstraints(maxHeight: 40.w),
          // labelText: widget.labelText,
          // labelStyle: labelStyle(context),
          hintText: widget.textPlaceholder ?? widget.labelText,
          hintStyle: textFieldPlaceholderTextStyle(context),
          isDense: true,
          filled: true,
          fillColor: AppColors.background,
          // contentPadding: EdgeInsets.all(height * 0.015),
          focusedBorder: AppStyles.focusedBorder,
          disabledBorder: AppStyles.focusBorder,
          enabledBorder: AppStyles.focusBorder,
          errorBorder: AppStyles.focusErrorBorder,
          focusedErrorBorder: AppStyles.focusErrorBorder,
          errorStyle: errorTextStyle(context)),
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword,
      onSaved: widget.onSaved,
      onEditingComplete: () {
        setState(() {
          FocusScope.of(context).unfocus();
        });
        if (widget.onEditingComplete != null) widget.onEditingComplete!();
      },
      onChanged: widget.onChanged,
      validator: widget.validator,
      onTap: () {
        setState(() {
          FocusScope.of(context).requestFocus(_focusNode);
        });
        if (widget.onTap != null) widget.onTap!();
      },
    );
  }

  TextStyle? labelStyle(context) {
    return _focusNode.hasFocus ? labelTextFieldTextStyle(context) : textFieldPlaceholderTextStyle(context);
  }

  labelTextFieldTextStyle(context) =>
      TextStyle(fontSize: 14, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w600, height: 1.4);

  textFieldPlaceholderTextStyle(context) =>
      TextStyle(fontSize: 14, color: Theme.of(context).hintColor, fontWeight: FontWeight.w600, height: 1.4);

  errorTextStyle(context) =>
      TextStyle(fontSize: 10, color: Theme.of(context).errorColor, fontWeight: FontWeight.w500, height: 1.4);

  textFieldTextStyle(context) => TextStyle(
      fontSize: 14, color: Theme.of(context).textTheme.bodyText1!.color, fontWeight: FontWeight.w500, height: 1.4);
}
