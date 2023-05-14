import 'package:flutter/material.dart';

class BaseHeader extends StatelessWidget {
  final String title;
  final ValueChanged<String>? seachChanged;
  final String buttonLabel;
  final VoidCallback? buttonPressed;
  final bool addButton;
  final Widget? filterWidget;

  const BaseHeader({
    Key? key,
    required this.title,
    this.seachChanged,
    required this.buttonLabel,
    this.buttonPressed,
    this.addButton = true,
    this.filterWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, contrains) {
        return Wrap(
          children: [
            Visibility(
              visible: filterWidget == null,
              replacement: filterWidget ?? const SizedBox.shrink(),
              child: SizedBox(
                width: contrains.maxWidth * .1,
                child: TextFormField(
                  onChanged: seachChanged,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: Icon(
                      Icons.search,
                      size: contrains.maxWidth * 0.03,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
