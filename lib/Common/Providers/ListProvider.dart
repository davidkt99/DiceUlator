import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListProvider extends StateNotifier<List> {
  ListProvider() : super([]);

  void add(var val){
    state.insert(0, val);
    if(state.length > 25){
      state.removeLast();
    }
  }

  void clear(){
    state = [];
  }
}