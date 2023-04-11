import 'package:flutter/material.dart';

class groceryitemTitle extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String Imagepath;
  final Color;
  void Function() onPressed;
  groceryitemTitle(
      {super.key,
      required this.ItemName,
      required this.ItemPrice,
      required this.Imagepath,
      this.Color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              Imagepath,
              height: 64,
            ),
            // text name
            Text(ItemName),

            // text price
            MaterialButton(
              onPressed: onPressed,
              color: Color[800],
              child: Text(
                '\$' + ItemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
