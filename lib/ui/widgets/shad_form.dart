import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'default',
  type: ShadForm,
)
Widget buildShadFormDefaultUseCase(BuildContext context) {
  return Container(
    constraints: const BoxConstraints(maxWidth: 480),
    padding: const EdgeInsets.all(32),
    child: ShadForm(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShadInput(
            initialValue: '',
            placeholder: const Text('Name'),
            onChanged: (value) => dev.log('Name changed: $value'),
          ),
          const SizedBox(height: 16),
          ShadInput(
            initialValue: '',
            placeholder: const Text('Email'),
            onChanged: (value) => dev.log('Email changed: $value'),
          ),
          const SizedBox(height: 24),
          ShadButton(
            onPressed: () => dev.log('Form submitted'),
            child: const Text('Submit'),
          ),
        ],
      ),
    ),
  );
}

@UseCase(
  name: 'disabled',
  type: ShadForm,
)
Widget buildShadFormDisabledUseCase(BuildContext context) {
  return Container(
    constraints: const BoxConstraints(maxWidth: 480),
    padding: const EdgeInsets.all(32),
    child: ShadForm(
      enabled: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShadInputFormField(
            initialValue: '',
            placeholder: const Text('Name'),
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            initialValue: '',
            placeholder: const Text('Email'),
          ),
          const SizedBox(height: 24),
          ShadButton(
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ],
      ),
    ),
  );
}

@UseCase(
  name: 'with_validation',
  type: ShadForm,
)
Widget buildShadFormWithValidationUseCase(BuildContext context) {
  final formKey = GlobalKey<ShadFormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  return Container(
    constraints: const BoxConstraints(maxWidth: 480),
    padding: const EdgeInsets.all(32),
    child: ShadForm(
      key: formKey,
      autovalidateMode: ShadAutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShadInputFormField(
            id: 'name',
            label: const Text('Name'),
            placeholder: const Text('Name'),
            description: const Text('Enter your full name'),
            controller: nameController,
            onChanged: (value) {
              dev.log('Name changed: $value');
            },
            validator: (v) {
              if (v.isEmpty) {
                return 'Name is required';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'email',
            label: const Text('Email'),
            placeholder: const Text('Email'),
            description: const Text('Enter your email address'),
            controller: emailController,
            onChanged: (value) {
              dev.log('Email changed: $value');
            },
            validator: (v) {
              if (v.isEmpty) {
                return 'Email is required';
              }
              if (!v.contains('@')) {
                return 'Enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          ShadButton(
            onPressed: () {
              if (formKey.currentState?.saveAndValidate() ?? false) {
                final name = nameController.text;
                final email = emailController.text;
                dev.log('Form submitted: name=$name, email=$email');
              } else {
                dev.log('Form is invalid');
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    ),
  );
}
