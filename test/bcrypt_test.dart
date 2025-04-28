import 'package:bcrypt/bcrypt.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Check BCrypt prefix', () {
      expect(BCrypt.genSalt().startsWith('\$2a\$'), isTrue);
      expect(BCrypt.genSalt(prefix: '\$2b\$').startsWith('\$2b\$'), isTrue);
      expect(BCrypt.genSalt(prefix: '\$2x\$').startsWith('\$2x\$'), isTrue);
      expect(BCrypt.genSalt(prefix: '\$2y\$').startsWith('\$2y\$'), isTrue);
    });
  });
}
