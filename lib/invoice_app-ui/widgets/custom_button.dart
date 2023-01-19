import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color labelColor;

  const CustomButton(
      {super.key,
      required this.color,
      required this.icon,
      required this.label,
      required this.labelColor,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      height: 45,
      child: ElevatedButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide.none),
            ),
          ),
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 18,
            color: labelColor,
          ),
          label: Text(
            label,
            style: TextStyle(
              color: labelColor,
            ),
          )),
    );
  }
}
