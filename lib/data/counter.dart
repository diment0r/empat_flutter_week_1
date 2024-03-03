class Counter {
  int _firstCounter;
  int _secondCounter;

  Counter({
    int firstCounter = 0,
    int secondCounter = 0,
  })  : _firstCounter = firstCounter,
        _secondCounter = secondCounter;

  int get firstCounter => _firstCounter;
  int get secondCounter => _secondCounter;

  set firstCounter(int firstCounter) => _firstCounter = firstCounter;
  set secondCounter(int secondCounter) => _secondCounter = secondCounter;

}
