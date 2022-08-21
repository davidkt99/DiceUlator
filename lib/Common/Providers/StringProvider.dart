import 'package:flutter_riverpod/flutter_riverpod.dart';

class StrProvider extends StateNotifier<String>{
  StrProvider() : super("");

  void add(String val) => state = state + " " + val;
  void clear() => state = "";

}