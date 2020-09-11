library tictactoe.globals;
import 'package:flutter/material.dart';
const Color mainBgColor = Color.fromRGBO( 93, 158, 159,1.0);
const Color BorderYellow = Color.fromRGBO(222, 184, 134, 1.0);
const Color OGreen = Color.fromRGBO(7,96,99, 1.0);
const Color ButtonGreen = Color.fromRGBO(3,133,139,1.0);
const double Soorefontsize = 60.0;
const double ScoreSpacing = 10.0;
const double TicTacFontsize = 60.0;
List ContList = [
  2,2,2,
  2,2,2,
  2,2,2,
];
int XScore = 0;
int OScore = 0;
int turn = 1;
bool winner = false;