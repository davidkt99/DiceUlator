import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../Common/Providers/ExpressionProvider.dart';

final calcExpressionProvider =
StateNotifierProvider<ExpressionProvider, String>((ref) => ExpressionProvider());
