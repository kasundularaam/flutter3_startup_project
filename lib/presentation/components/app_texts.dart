import 'package:flutter/material.dart';
import 'package:flutter3_startup_project/core/themes/app_theme.dart';

class BodyLarge extends StatelessWidget {
  final String text;
  final Color? color;
  final int? maxLines;
  const BodyLarge({
    Key? key,
    required this.text,
    this.color,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: color != null
          ? Theme.of(context).textTheme.bodyLarge!.copyWith(color: color)
          : Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).onGroundColor),
    );
  }
}

class BodyMedium extends StatelessWidget {
  final String text;
  final Color? color;
  final int? maxLines;
  const BodyMedium({
    Key? key,
    required this.text,
    this.color,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: color != null
          ? Theme.of(context).textTheme.bodyMedium!.copyWith(color: color)
          : Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).onGroundColor),
    );
  }
}

class BodySmall extends StatelessWidget {
  final String text;
  final Color? color;
  final int? maxLines;
  const BodySmall({
    Key? key,
    required this.text,
    this.color,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: color != null
          ? Theme.of(context).textTheme.bodySmall!.copyWith(color: color)
          : Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Theme.of(context).onGroundColor),
    );
  }
}

class HeadlineLarge extends StatelessWidget {
  final String text;
  final Color? color;
  final int? maxLines;
  const HeadlineLarge({
    Key? key,
    required this.text,
    this.color,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: color != null
          ? Theme.of(context).textTheme.headlineLarge!.copyWith(color: color)
          : Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Theme.of(context).onGroundColor),
    );
  }
}

class HeadlineMedium extends StatelessWidget {
  final String text;
  final Color? color;
  final int? maxLines;
  const HeadlineMedium({
    Key? key,
    required this.text,
    this.color,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: color != null
            ? Theme.of(context).textTheme.headlineMedium!.copyWith(color: color)
            : Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Theme.of(context).onGroundColor));
  }
}

class HeadlineSmall extends StatelessWidget {
  final String text;
  final Color? color;
  final int? maxLines;
  const HeadlineSmall({
    Key? key,
    required this.text,
    this.color,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: color != null
          ? Theme.of(context).textTheme.headlineSmall!.copyWith(color: color)
          : Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Theme.of(context).onGroundColor),
    );
  }
}
