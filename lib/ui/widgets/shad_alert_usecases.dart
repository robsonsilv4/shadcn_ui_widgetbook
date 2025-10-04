import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'default',
  type: ShadAlert,
)
Widget buildShadAlertDefaultUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 480),
    child: ShadAlert(
      icon: const Icon(LucideIcons.info),
      title: Text(
        context.knobs.string(label: 'title', initialValue: 'Info Alert'),
      ),
      description: Text(
        context.knobs.string(
          label: 'description',
          initialValue: 'This is an informational alert.',
        ),
      ),
    ),
  );
}

@UseCase(
  name: 'destructive',
  type: ShadAlert,
)
Widget buildShadAlertDestructiveUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 480),
    child: ShadAlert.destructive(
      icon: const Icon(LucideIcons.circleAlert),
      title: Text(
        context.knobs.string(label: 'title', initialValue: 'Error Alert'),
      ),
      description: Text(
        context.knobs.string(
          label: 'description',
          initialValue: 'Something went wrong.',
        ),
      ),
    ),
  );
}

@UseCase(
  name: 'with_actions',
  type: ShadAlert,
)
Widget buildShadAlertWithActionsUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 480),
    child: ShadAlert(
      icon: const Icon(LucideIcons.messageCircleWarning),
      title: Text(
        context.knobs.string(label: 'title', initialValue: 'Warning Alert'),
      ),
      description: Text(
        context.knobs.string(
          label: 'description',
          initialValue: 'This action cannot be undone.',
        ),
      ),
      bottom: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          children: [
            ShadButton(
              onPressed: () => dev.log('Confirmed'),
              child: const Text('Confirm'),
            ),
            const SizedBox(width: 8),
            ShadButton.outline(
              onPressed: () => dev.log('Cancelled'),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    ),
  );
}

@UseCase(
  name: 'custom_icon',
  type: ShadAlert,
)
Widget buildShadAlertCustomIconUseCase(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 480),
    child: ShadAlert(
      icon: CircleAvatar(
        backgroundColor: ShadTheme.of(context).colorScheme.primary,
        child: const Icon(LucideIcons.star),
      ),
      title: Text(
        context.knobs.string(label: 'title', initialValue: 'Custom Icon Alert'),
      ),
      description: Text(
        context.knobs.string(
          label: 'description',
          initialValue: 'This alert uses a custom icon.',
        ),
      ),
    ),
  );
}
