import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpressionProvider extends StateNotifier<String>{
  ExpressionProvider() : super("");

  void add(String val) => state = state + val;
  void clear() => state = "";
}