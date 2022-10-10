import 'package:diceulator/Util/string_functions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

import 'package:logger/logger.dart';

class ExpressionProvider extends StateNotifier<String>{
  var logger = Logger(
    printer: PrettyPrinter(),
  );

  ExpressionProvider() : super("");

  String postRngExpression = "";
  List<String> expressionList = [];
  String expression = "";
  List<String> pastRolls = [];

  /// Basic
  void add(String val) {
    state = state + val;
    expression = state;
  }
  void clear(){
    state = "";
    expression = "";
    postRngExpression = "";
  }

  /// Checks
  bool isValidEntry(String val){
    if(expression.endsWith(" ") || expression.isEmpty){
      if(val == "+" || val == "-"){
        return false;
      }else{
        return true;
      }
    }else if(expression.endsWith("D")){
      if(val == "+" || val == "-" || val == "D"){
        return false;
      }else{
        return true;
      }
    }else{
      if(val == "D" && expression.split(" ").last.split("D").length > 1){
        return false;
      }else if(isNumeric(val) && isNumeric(expression[expression.length-1]) && expression.split(" ").last.split("D").last.length > 3){
        return false;
      }
      return true;
    }

  }

  /// Solve
  void parseToList(){
    postRngExpression = "";
    expressionList = [];
    String curVal = "";

    for(var char in expression.split("")){
      if(isNumeric(char)){
        curVal += char;
      }else if(isOperator(char)){
        expressionList.addAll([curVal, char]);
        curVal = "";
      }
    }
    expressionList.add(curVal);
  }

  int evaluateAddSub(){
    var sol = int.parse(expressionList.first);
    var curr = 0;

    for(int i = 1;i < expressionList.length;i++){
      if(isNumeric(expressionList[i])){
        curr = int.parse(expressionList[i]);
      }else{
        switch(expressionList[i]){
          case "+":
            sol = sol + curr;
            break;
          case "-":
            sol = sol - curr;
            break;
        }
      }
    }


    logger.i(postRngExpression + " = " + sol.toString());
    return sol;
  }

  List diceToList(int numOfDice, int diceSides){
    var rng = Random();
    List<String> diceList = [];

    for(int i = 0;i < numOfDice;i++){
      diceList.add((rng.nextInt(diceSides)+1).toString());
      if(i < numOfDice-1){
        diceList.add("+");
      }
    }

    logger.i(diceList);
    return diceList;
  }
}