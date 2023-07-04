import 'dart:io';

import 'package:dtensor/dtensor.dart';

class DummyDataset {
  DTensor<num> get xTrain => DTensor<int>.tensor([
        [1, 1],
        [1, 2],
        [2, 2],
        [2, 3]
      ]);

  DTensor<num> get yTrain =>
      DTensor.dot(xTrain, DTensor<int>.tensor([1, 2])) + DTensor<int>.tensor(3);

  final DTensor<num> xTest = DTensor.arange(end: 25).reshape([5, 5]);

  final DTensor<num> yTest = DTensor.arange(end: 5);
}
