import 'package:cross_file/cross_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ValueTextfield extends StatelessWidget {
  const ValueTextfield({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: title,
          contentPadding: const EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      );
}

class ValueField extends StatelessWidget {
  const ValueField({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.onSurface),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SelectableText(
              value,
              style: const TextStyle(fontFamily: 'mono', fontSize: 12),
            ),
          ],
        ),
      );
}

class ValueFilePicker extends StatefulWidget {
  const ValueFilePicker({
    super.key,
    required this.title,
    required this.onFileSelected,
  });

  final String title;
  final ValueChanged<XFile?> onFileSelected;

  @override
  State<ValueFilePicker> createState() => _ValueFilePickerState();
}

class _ValueFilePickerState extends State<ValueFilePicker> {
  XFile? _file;

  Future<void> _pickFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _file = result.files.first.xFile;
      });
      widget.onFileSelected(_file);
    }
  }

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(widget.title),
        subtitle: Text(_file?.name ?? 'No file selected'),
        trailing: ElevatedButton(
          onPressed: _pickFile,
          child: const Text('Upload'),
        ),
      );
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) => const Divider(height: 16);
}

void showSnackBar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
