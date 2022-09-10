
import 'package:diceulator/Common/Providers/ExpressionProvider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  var mockExpressionProvider = ExpressionProvider();

  group('ExpressionProviderTests', () {
    test('expecting 256 - 130 to equal 116', () {
      mockExpressionProvider.postRngExpression = "256-130";

      final result = mockExpressionProvider.evaluateAddSub();
      expect(result, 16);
    });
  });
}
