import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Common/Providers/StringProvider.dart';

final calcExpression =
StateNotifierProvider<StrProvider, String>((ref) => StrProvider());