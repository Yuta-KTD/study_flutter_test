import 'package:test/test.dart';
import 'package:testing_app/model/favorites.dart';

void main() {
  group('Testing App Provider', () {
    Favorites favorites = Favorites();

    test('A new item shold be added', () {
      int number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });
    test('An item should be removed', () {
      int number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
