import 'dart:math';

final _random = new Random();
final int _numeroRandomicoMinimo = 1;
final int _numeroRandomicoMaximo = 100;

int obtemNumeroRandomico() {
    return _numeroRandomicoMinimo +
        _random.nextInt(_numeroRandomicoMaximo - _numeroRandomicoMinimo);
  }