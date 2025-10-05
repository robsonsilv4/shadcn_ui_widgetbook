import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'default',
  type: ShadProgress,
)
Widget buildShadProgressDefaultUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadProgress(
      value: context.knobs.double.slider(
        label: 'progress',
        initialValue: 0.5,
        max: 1,
        divisions: 100,
      ),
      minHeight: context.knobs.double.input(
        label: 'minHeight',
        initialValue: 16,
      ),
    ),
  );
}

@UseCase(
  name: 'indeterminate',
  type: ShadProgress,
)
Widget buildShadProgressIndeterminateUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadProgress(
      minHeight: context.knobs.double.input(
        label: 'minHeight',
        initialValue: 16,
      ),
    ),
  );
}

@UseCase(
  name: 'custom_colors',
  type: ShadProgress,
)
Widget buildShadProgressCustomColorsUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadProgress(
      value: context.knobs.double.slider(
        label: 'progress',
        initialValue: 0.7,
        max: 1,
        divisions: 100,
      ),
      color: context.knobs.color(
        label: 'color',
        initialValue: const Color.fromARGB(255, 177, 4, 196),
      ),
      backgroundColor: context.knobs.color(
        label: 'backgroundColor',
        initialValue: Colors.grey.shade300,
      ),
      minHeight: context.knobs.double.input(
        label: 'minHeight',
        initialValue: 16,
      ),
    ),
  );
}

@UseCase(
  name: 'rounded',
  type: ShadProgress,
)
Widget buildShadProgressRoundedUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 320),
    child: ShadProgress(
      value: context.knobs.double.slider(
        label: 'progress',
        initialValue: 0.3,
        max: 1,
        divisions: 100,
      ),
      borderRadius: BorderRadius.circular(
        context.knobs.double.input(
          label: 'borderRadius',
          initialValue: 16,
        ),
      ),
      minHeight: context.knobs.double.input(
        label: 'minHeight',
        initialValue: 16,
      ),
    ),
  );
}
