import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  TextEditingController decimal = TextEditingController();
  @observable
  TextEditingController binary = TextEditingController();
  @observable
  TextEditingController octal = TextEditingController();
  @observable
  TextEditingController hexa = TextEditingController();

  void fromDec(String text) {
    if (text.isNotEmpty) {
      binary.text = _dec2bin(text);
      octal.text = _dec2oct(text);
      hexa.text = _dec2hex(text);
    } else {
      clearAll();
    }
  }

  @action
  void fromBin(String text) {
    int exp = text.length - 1;
    int res = 0;

    for (int i = 0; i < text.length; i++) {
      res += int.parse(text[i]) * pow(2, exp - i);
    }
    if (text.isNotEmpty) {
      decimal.text = res.toString();
      octal.text = _dec2oct(decimal.text);
      hexa.text = _dec2hex(decimal.text);
    } else {
      clearAll();
    }
  }

  @action
  void fromOct(String text) {
    int exp = text.length - 1;
    int res = 0;
    for (var i = 0; i < text.length; i++) {
      res += int.parse(text[i]) * pow(8, exp);
      exp--;
    }
    if (text.isNotEmpty) {
      decimal.text = res.toString();
      binary.text = _dec2bin(res.toString());
      hexa.text = _dec2hex(res.toString());
    } else {
      clearAll();
    }
  }

  @action
  void fromHex(String text) {
    Map<String, int> especiais = {
      "A": 10,
      "B": 11,
      "C": 12,
      "D": 13,
      "E": 14,
      "F": 15
    };
    int exp = text.length - 1;
    int res = 0;
    for (var i = 0; i < text.length; i++) {
      if (especiais.containsKey(text[i].toUpperCase())) {
        res += especiais[text[i].toUpperCase()] * pow(16, exp);
      } else {
        res += int.parse(text[i]) * pow(16, exp);
      }
      exp--;
    }
    if (text.isNotEmpty) {
      decimal.text = res.toString();
      binary.text = _dec2bin(decimal.text);
      octal.text = _dec2oct(decimal.text);
    } else {
      clearAll();
    }
  }

  @action
  void clearAll() {
    decimal.text = "";
    binary.text = "";
    octal.text = "";
    hexa.text = "";
  }

  String _dec2bin(String text) {
    int dec = int.parse(text);
    String nBin = '';
    while (dec >= 1) {
      nBin = (dec % 2).toString() + nBin;
      dec ~/= 2;
    }
    return nBin;
  }

  String _dec2oct(String text) {
    String res = '';
    int dec = int.parse(text);
    while (dec >= 1) {
      res = (dec % 8).toString() + res;
      dec ~/= 8;
    }
    return res;
  }

  String _dec2hex(String text) {
    Map<int, String> especiais = {
      10: "A",
      11: "B",
      12: "C",
      13: "D",
      14: "E",
      15: "F"
    };
    String res = '';
    int dec = int.parse(text), aux;
    while (dec >= 1) {
      if (dec % 16 > 9) {
        aux = dec % 16;
        res = especiais[aux].toString() + res;
      } else {
        res = (dec % 16).toString() + res;
      }
      dec ~/= 16;
    }
    return res;
  }
}
