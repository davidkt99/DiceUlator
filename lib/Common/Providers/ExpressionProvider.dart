import 'package:diceulator/Util/string_functions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';
import 'package:function_tree/function_tree.dart';

class ExpressionProvider extends StateNotifier<String>{
  ExpressionProvider() : super("");

  String postRngExpression = "";
  String expression = "";
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
    //TODO:  if statement based on final char in expression and
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
    print(expression);
    print(state);
    print(postRngExpression);
    print(postRngExpression.interpret().toInt());
    return postRngExpression.interpret().toInt();
  }
}