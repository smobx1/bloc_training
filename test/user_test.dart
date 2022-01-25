import 'package:bloc_training/training/user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Given user with age 24 When birtday is called Then user is old',
      () async {
    // ARRANGE

    final user = User(24, "Mihnea");

    // ACT
    user.birthday();

    // ASSERT
    expect(user.age, 25);
  });
}
