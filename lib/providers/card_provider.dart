import 'dart:math';

import 'package:fintech_app/models/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardProvider extends ChangeNotifier{
  List<CardModel> cards = [
    CardModel("054 020 9195", Color(0xff625677), "Mobile Money"),
    // CardModel("346 765 23 879", Color(0xff628395), "Bank"),
  ];
  List<String> cardTypes = [
    "Mobile Payment Card",
    "Bank Payment Card"
  ];
  int activeCard = 0;

  set activeCreditCard(int index) => activeCard = index;

  createCard(String cardNum, String cardType, String indexNum){
    cardType = cardTypes[0];
    var val = CardModel(cardNum, Color.fromARGB(Random().nextInt(255), Random().nextInt(200),
            Random().nextInt(200), Random().nextInt(200)) ,cardType);
    cards.add(val);
    notifyListeners();
  }
}