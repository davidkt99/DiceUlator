import 'package:diceulator/Common/Providers/ListProvider.dart';
import 'package:diceulator/Common/Providers/StrProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../Common/Providers/ExpressionProvider.dart';

final calcExpressionProvider =
StateNotifierProvider<ExpressionProvider, String>((ref) => ExpressionProvider());

final solProvider =
StateNotifierProvider<StrProvider, String>((ref) => StrProvider());

final pastRollsProvider =
StateNotifierProvider<ListProvider, List>((ref) => ListProvider());
