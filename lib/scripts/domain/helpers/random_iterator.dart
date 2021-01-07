import 'package:spritewidget/spritewidget.dart';

class RandomIterator extends Iterator<int> {
  final int max;
  final _randoms = <int>[];
  int _currentIndex = 0;

  RandomIterator(this.max) : assert(max != null) {
    final randomSet = <int>{};
    while (randomSet.length < max) {
      randomSet.add(randomInt(max));
    }
    _randoms.addAll(randomSet);
  }

  @override
  int get current => _randoms[_currentIndex++];

  int getByIndex(int index) {
    if (index >= max) {
      throw ArgumentError('The index must be less thn the max');
    }
    return _randoms[index];
  }

  @override
  bool moveNext() {
    return _currentIndex < max;
  }
}
