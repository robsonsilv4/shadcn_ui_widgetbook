import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'default',
  type: ShadInput,
)
Widget buildShadInputDefaultUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadInput(
      initialValue: context.knobs.string(label: 'initialValue'),
      placeholder: Text(
        context.knobs.string(
          label: 'placeholder',
          initialValue: 'Type something...',
        ),
      ),
      enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
      readOnly: context.knobs.boolean(label: 'readOnly'),
      maxLength: context.knobs.int.input(label: 'maxLength', initialValue: 50),
      obscureText: context.knobs.boolean(label: 'obscureText'),
      onChanged: (value) => dev.log('Input changed: $value'),
      onSubmitted: (value) => dev.log('Input submitted: $value'),
    ),
  );
}

@UseCase(
  name: 'with_icon',
  type: ShadInput,
)
Widget buildShadInputWithIconUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadInput(
      initialValue: context.knobs.string(label: 'initialValue'),
      placeholder: Text(
        context.knobs.string(label: 'placeholder', initialValue: 'With icon'),
      ),
      leading: const Icon(LucideIcons.search),
      trailing: const Icon(LucideIcons.x),
      enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
      onChanged: (value) => dev.log('Input changed: $value'),
    ),
  );
}

@UseCase(
  name: 'disabled',
  type: ShadInput,
)
Widget buildShadInputDisabledUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadInput(
      initialValue: context.knobs.string(label: 'initialValue'),
      placeholder: Text(
        context.knobs.string(label: 'placeholder', initialValue: 'Disabled'),
      ),
      enabled: false,
    ),
  );
}

@UseCase(
  name: 'password',
  type: ShadInput,
)
Widget buildShadInputPasswordUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadInput(
      initialValue: context.knobs.string(label: 'initialValue'),
      placeholder: Text(
        context.knobs.string(label: 'placeholder', initialValue: 'Password'),
      ),
      obscureText: true,
      enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
      onChanged: (value) => dev.log('Password changed: $value'),
    ),
  );
}

@UseCase(
  name: 'multiline',
  type: ShadInput,
)
Widget buildShadInputMultilineUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadInput(
      initialValue: context.knobs.string(label: 'initialValue'),
      placeholder: Text(
        context.knobs.string(label: 'placeholder', initialValue: 'Multiline'),
      ),
      maxLines: context.knobs.int.input(label: 'maxLines', initialValue: 5),
      enabled: context.knobs.boolean(label: 'enabled', initialValue: true),
      onChanged: (value) => dev.log('Multiline changed: $value'),
    ),
  );
}
