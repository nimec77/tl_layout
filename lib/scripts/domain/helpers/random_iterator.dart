import 'package:spritewidget/spritewidget.dart';

class RandomIterator extends Iterator<int> {
  final int max;
  final int length;
  final int mandatory;
  List<int> _randoms;
  int _currentIndex = 0;

  RandomIterator(this.max, this.length, [this.mandatory = -1])
      : assert(max != null),
        assert(length != null),
        assert(mandatory != null) {
    _randoms = List.generate(max, (index) => index);
    _randoms.shuffle();
    _randoms = _randoms.sublist(0, length);
    if (mandatory != -1 && !_randoms.contains(mandatory)) {
      _randoms[randomInt(length)] = mandatory;
    }
  }

  @override
  int get current => _randoms[_currentIndex++];

  int getByIndex(int index) {
    if (index >= length) {
      throw ArgumentError('The index must be less thn the max');
    }
    return _randoms[index];
  }

  @override
  bool moveNext() {
    return _currentIndex < max;
  }
}
