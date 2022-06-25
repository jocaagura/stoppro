import 'dart:async';

import '../entities/bloc_entity.dart';

class SizeBloc extends Bloc {
  SizeBloc() {
    width = 0.0;
  }

  double _width = 0.0;
  final StreamController<double> _widthController =
      StreamController<double>.broadcast();

  double get width => _width;

  Stream<double> get widthStream => _widthController.stream;

  set width(double value) {
    if (value < 0) value = 0.0;
    _widthController.sink.add(value);
    _width = value;
  }

  double getWidthByPercent([double value = 1.0, double maxValue = 0]) {
    if (value > 1.0) value = 1.0;
    if (value < 0.0) value = 0.01;
    double tmp = _width * value;
    if (maxValue > 0 && tmp > maxValue) tmp = maxValue;
    return tmp;
  }

  @override
  void dispose() {
    _widthController.close();
  }
}

final sizeBloc = SizeBloc();
