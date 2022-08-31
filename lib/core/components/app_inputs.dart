import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InputParams {
  final String? hint;
  final String? label;
  final TextAlign? align;
  InputParams({
    this.hint,
    this.label,
    this.align,
  });
}

class AppInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool isPassword;
  final InputParams? params;
  const AppInput({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.isPassword,
    this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        keyboardType: textInputType,
        textAlign: params!.align ?? TextAlign.start,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
          ),
          hintText: params!.hint,
          labelText: params!.label,
        ),
      );
}

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final InputParams? params;
  const InputText({
    Key? key,
    required this.controller,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AppInput(
        controller: controller,
        isPassword: false,
        textInputType: TextInputType.text,
        params: params,
      );
}

class InputEmail extends StatelessWidget {
  final TextEditingController controller;
  final InputParams? params;
  const InputEmail({
    Key? key,
    required this.controller,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AppInput(
        controller: controller,
        isPassword: false,
        textInputType: TextInputType.emailAddress,
        params: params,
      );
}

class InputName extends StatelessWidget {
  final TextEditingController controller;
  final InputParams? params;
  const InputName({
    Key? key,
    required this.controller,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AppInput(
        controller: controller,
        isPassword: false,
        textInputType: TextInputType.name,
        params: params,
      );
}

class InputPassword extends StatelessWidget {
  final TextEditingController controller;
  final InputParams? params;
  const InputPassword({
    Key? key,
    required this.controller,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AppInput(
        controller: controller,
        isPassword: true,
        textInputType: TextInputType.visiblePassword,
        params: params,
      );
}

class InputNumber extends StatelessWidget {
  final TextEditingController controller;
  final InputParams? params;
  const InputNumber({
    Key? key,
    required this.controller,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AppInput(
        controller: controller,
        isPassword: false,
        textInputType: TextInputType.number,
        params: params,
      );
}

class InputPhone extends StatelessWidget {
  final TextEditingController controller;
  final InputParams? params;
  const InputPhone({
    Key? key,
    required this.controller,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AppInput(
        controller: controller,
        isPassword: false,
        textInputType: TextInputType.phone,
        params: params,
      );
}
