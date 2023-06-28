import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String text;

  const  TextFieldWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextField(
        textDirection: TextDirection.rtl,
        onSubmitted:(value) {
          setState(() {
            widget.text.replaceAll(widget.text, value);
          });
        },
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ],
  );
}