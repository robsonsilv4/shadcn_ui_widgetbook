import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'default',
  type: ShadButton,
)
Widget buildShadButtonDefaultUseCase(BuildContext context) {
  return ShadButton(
    onPressed: () => dev.log('Default pressed'),
    enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(
      context.knobs.string(label: 'label', initialValue: 'Default Button'),
    ),
  );
}

@UseCase(
  name: 'destructive',
  type: ShadButton,
)
Widget buildShadButtonDestructiveUseCase(BuildContext context) {
  return ShadButton.destructive(
    onPressed: () => dev.log('Destructive pressed'),
    enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(
      context.knobs.string(label: 'label', initialValue: 'Destructive'),
    ),
  );
}

@UseCase(
  name: 'outline',
  type: ShadButton,
)
Widget buildShadButtonOutlineUseCase(BuildContext context) {
  return ShadButton.outline(
    onPressed: () => dev.log('Outline pressed'),
    enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(context.knobs.string(label: 'label', initialValue: 'Outline')),
  );
}

@UseCase(
  name: 'secondary',
  type: ShadButton,
)
Widget buildShadButtonSecondaryUseCase(BuildContext context) {
  return ShadButton.secondary(
    onPressed: () => dev.log('Secondary pressed'),
    enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(
      context.knobs.string(label: 'label', initialValue: 'Secondary'),
    ),
  );
}

@UseCase(
  name: 'ghost',
  type: ShadButton,
)
Widget buildShadButtonGhostUseCase(BuildContext context) {
  return ShadButton.ghost(
    onPressed: () => dev.log('Ghost pressed'),
    enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(context.knobs.string(label: 'label', initialValue: 'Ghost')),
  );
}

@UseCase(
  name: 'link',
  type: ShadButton,
)
Widget buildShadButtonLinkUseCase(BuildContext context) {
  return ShadButton.link(
    onPressed: () => dev.log('Link pressed'),
    enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(context.knobs.string(label: 'label', initialValue: 'Link')),
  );
}

@UseCase(
  name: 'with_icon',
  type: ShadButton,
)
Widget buildShadButtonWithIconUseCase(BuildContext context) {
  return ShadButton(
    leading: const Icon(Icons.star),
    trailing: const Icon(Icons.arrow_forward),
    onPressed: () => dev.log('With Icon pressed'),
    enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(
      context.knobs.string(label: 'label', initialValue: 'With Icon'),
    ),
  );
}

@UseCase(
  name: 'disabled',
  type: ShadButton,
)
Widget buildShadButtonDisabledUseCase(BuildContext context) {
  return ShadButton(
    onPressed: () => dev.log('Disabled pressed'),
    enabled: false,
    size: context.knobs.object.dropdown<ShadButtonSize>(
      label: 'size',
      initialOption: ShadButtonSize.regular,
      options: ShadButtonSize.values,
      labelBuilder: (v) => v.name,
    ),
    child: Text(context.knobs.string(label: 'label', initialValue: 'Disabled')),
  );
}
