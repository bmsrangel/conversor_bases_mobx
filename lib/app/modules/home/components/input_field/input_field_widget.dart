import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InputFieldWidget extends StatelessWidget {
  final String label;
  final String labelText;
  final TextEditingController controller;
  final Function onChanged;

  const InputFieldWidget(
      {Key key, this.label, this.labelText, this.controller, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 4.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            height: 60,
            alignment: Alignment.center,
            child: Text(
              label.toUpperCase(),
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                topLeft: Radius.circular(4),
              ),
            ),
          ),
          Expanded(
            child: TextField(
              maxLines: 1,
              controller: controller,
              onChanged: onChanged,
              textCapitalization: label == "HEX"
                  ? TextCapitalization.characters
                  : TextCapitalization.none,
              keyboardType: label == "HEX"
                  ? TextInputType.text
                  : TextInputType.numberWithOptions(decimal: false),
              inputFormatters: setInputFormatters(label),
              decoration: InputDecoration(
                labelText: labelText,
                hintText: "0",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4.0),
                    bottomRight: Radius.circular(4.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<TextInputFormatter> setInputFormatters(String label) {
    switch (label) {
      case "HEX":
        return [
          WhitelistingTextInputFormatter(
            RegExp(
                '[\0, \1, \2, \3, \4, \5, \6, \7, \8, \9, \a, \A, \b, \B, \c, \C, \d, \D, \e, \E, \f, \F]',
                caseSensitive: false),
          )
        ];
        break;
      case "BIN":
        return [
          WhitelistingTextInputFormatter(
            RegExp('[\0, \1]'),
          )
        ];
        break;
      case "OCT":
        return [
          WhitelistingTextInputFormatter(
            RegExp('[\0, \1, \2, \3, \4, \5, \6, \7]'),
          )
        ];
      default:
        return [
          WhitelistingTextInputFormatter(
            RegExp('[\0, \1, \2, \3, \4, \5, \6, \7, \8, \9]'),
          )
        ];
    }
  }
}
