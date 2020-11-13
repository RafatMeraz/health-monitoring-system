import 'package:flutter/material.dart';

class RoundedRaisedButton extends StatelessWidget {
  RoundedRaisedButton(
      {@required this.text,
        @required this.textColor,
        @required this.imageLink,
        @required this.onTap,
        @required this.backgroundColor});

  final Function onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: RaisedButton(
          elevation: 4,
          color: backgroundColor,
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: imageLink == null
                ? Text(
              text,
              style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                  fontWeight: FontWeight.w600),
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 20,
                  height: 20,
                  child: Image.asset(imageLink),
                ),
                SizedBox(width: 20),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedBorderedRaisedButton extends StatelessWidget {
  RoundedBorderedRaisedButton(
      {@required this.text,
        @required this.textColor,
        @required this.imageLink,
        @required this.onTap,
        @required this.borderColor,
        @required this.backgroundColor});

  final Function onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor, borderColor;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: borderColor)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: RaisedButton(
            elevation: 4,
            color: backgroundColor,
            onPressed: onTap,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: imageLink == null
                  ? Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    child: Image.asset(imageLink),
                  ),
                  SizedBox(width: 20),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}