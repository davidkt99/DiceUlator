import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack/stack.dart';

import '../Providers/ExpressionProvider.dart';

class Expression{
  final provider =
  StateNotifierProvider<ExpressionProvider, String>((ref) => ExpressionProvider());
  Stack<String> operations = Stack<String>();
  Stack<int> numbers = Stack<int>();
}