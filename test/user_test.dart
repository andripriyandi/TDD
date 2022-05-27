import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_demo/entities/user.dart';

void main() {
  group("Default User Test", () {
    User user = User();

    test("User has an id with type int", () {
      expect(user.id, isA<int>());
    });

    test("User has an name with type string", () {
      expect(user.name, isA<String>());
    });

    test("Default id = 0, Default name = 'No Name', ", () {
      expect(user.id, equals(0));
      expect(user.name, equals("No Name"));
    });
  });

  group("Custom User Test", () {
    User user1 = User(id: 1);
    User user2 = User(name: "Udin");
    User user3 = User(id: 1, name: "Udin");

    test("Single parameter (is) is valid", () {
      expect(user1.id, equals(1));
      expect(user1.name, equals("No Name"));
    });

    test("Single parameter (name) is valid", () {
      expect(user2.id, equals(0));
      expect(user2.name, equals("Joko"));
    });

    test("All parameter is corret", () {
      expect(user3.id, equals(1));
      expect(user3.name, equals("Joko"));
    });
  });
}
