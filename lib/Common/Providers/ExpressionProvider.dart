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
  void handleDiceAndParseToStack(){
    postRngExpression = "";
    var list = expression.split(" ");
    var rng = Random();
    
    for(int i = 0;i < list.length;i++)
      {
        if(isNumeric(list[i])){
          postRngExpression = postRngExpression + list[i];
        }else if(isAlphaNumeric(list[i])){
          var randList = list[i].split("D");
          if(randList.first.isEmpty){
            randList[0] = "1";
          }
          var numOfDice = int.parse(randList.first);
          for(int j = 0;j < numOfDice;j++){
            postRngExpression = postRngExpression + (rng.nextInt(int.parse(randList.last))+1).toString();
            if(j < numOfDice-1){
              postRngExpression = postRngExpression + "+";
            }
          }
        }else{
          postRngExpression = postRngExpression + list[i];
        }
      }
  }

  int evaluateAddSub(){
    var curExpression = postRngExpression.split("");
    var sol = int.parse(curExpression.removeAt(0));

    while(curExpression.isNotEmpty){
      var curr = curExpression.removeAt(0);
      if(curr == '+'){
        sol = sol + int.parse(curExpression.removeAt(0));
      }else if(curr == '-'){
        sol = sol - int.parse(curExpression.removeAt(0));
      }
    }

    logger.i(postRngExpression + " = " + sol.toString());
    return sol;
  }
}