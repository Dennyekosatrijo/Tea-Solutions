import 'package:flutter/material.dart';
import 'package:tea_solutions/template/custome_template.dart';

class MyRadioOption<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;

  const MyRadioOption({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 25,
      height: 25,
      decoration: ShapeDecoration(
        shape: const CircleBorder(
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        color: isSelected ? bgwhite : Colors.transparent,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  // Widget _buildText() {
  //   return Text(
  //     text,
  //     style: const TextStyle(color: Colors.black, fontSize: 10),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              _buildLabel(),
            ],
          ),
        ),
      ),
    );
  }
}
