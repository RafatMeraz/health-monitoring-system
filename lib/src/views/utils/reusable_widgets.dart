import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

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



class Dasboard_Menu extends StatelessWidget {
  final String value;
  final String text;

  const Dasboard_Menu({Key key, this.value, this.text}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 116,
        maxWidth: 160,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color: kThemeColor,
            width: 3,
          )),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value,
              style: HomeText,
            ),
            Text(text,
              style: HomeSub,)
          ],
        ),
      ),
    );
  }
}

class DasBoard_Items extends StatelessWidget {
  final String name;
  final String bed;
  final Color color;

  const DasBoard_Items({Key key, this.name,this.bed, this.color}) : super(key: key);@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
          color: Colors.blueGrey,
          width: 2,
          
        )),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                  Row(
                      children: [
                          Text(name, style: HomeItem,),
                          Spacer(),
                          Container(
                          constraints: BoxConstraints(
                          maxHeight: 20,
                            maxWidth: 20,
                      ),
                           decoration: BoxDecoration(
                            color: color,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      )
                  ],
                    ),
                      Text('Bed No:$bed',
                        style: HomeItemSub,
                    )]),
      ),
    );
  }
}

