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
  late final FocusNode _focusNode;
  late final bool _ownsFocusNode;

  @override
  void initState() {
    super.initState();
    _ownsFocusNode = widget.focusNode == null;
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    if (_ownsFocusNode) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _handleFocusChange() {
    if (!_focusNode.hasFocus && mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: _textFieldTextStyle(context),
      initialValue: widget.initialValue,
      controller: widget.controller,
      enabled: widget.enabled,
      focusNode: _focusNode,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        prefix: widget.prefixIcon,
        hintText: widget.textPlaceholder ?? widget.labelText,
        hintStyle: _textFieldPlaceholderTextStyle(context),
        isDense: true,
        filled: true,
        fillColor: AppColors.background,
        focusedBorder: AppStyles.focusedBorder,
        disabledBorder: AppStyles.focusBorder,
        enabledBorder: AppStyles.focusBorder,
        errorBorder: AppStyles.focusErrorBorder,
        focusedErrorBorder: AppStyles.focusErrorBorder,
        errorStyle: errorTextStyle(context),
      ),
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword,
      onSaved: widget.onSaved,
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
        widget.onEditingComplete?.call();
      },
      onChanged: widget.onChanged,
      validator: widget.validator,
      onTap: () {
        FocusScope.of(context).requestFocus(_focusNode);
        widget.onTap?.call();
      },
    );
  }

  TextStyle _textFieldPlaceholderTextStyle(BuildContext context) => TextStyle(
        fontSize: 14,
        color: Theme.of(context).hintColor,
        fontWeight: FontWeight.w600,
        height: 1.4,
      );

  TextStyle _textFieldTextStyle(BuildContext context) => TextStyle(
        fontSize: 14,
        color: Theme.of(context).textTheme.bodyLarge?.color,
        fontWeight: FontWeight.w500,
        height: 1.4,
      );
}
