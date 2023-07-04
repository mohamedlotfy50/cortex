import 'dart:io';

import 'package:d_ml/core/knn.dart';
import 'package:d_ml/core/linear_regression.dart';
import 'package:d_ml/d_ml.dart';
import 'package:d_ml/dataset/dummy_dataset.dart';
import 'package:d_ml/dataset/iris_dataset.dart';
import 'package:d_ml/function/mse.dart';
import 'package:d_ml/model/ml_dataset.dart';
import 'package:dtensor/tensor/src/dtensor.dart';

void main() {
  DummyDataset breastCancer = DummyDataset();
  final LinearRegression lr = LinearRegression(epochs: 1000);

  lr.fit(x: breastCancer.xTrain, y: breastCancer.yTrain);
  DTensor<num> predictions = lr.predict(
    DTensor.tensor([
      [3, 5]
    ]),
  );
  print(predictions);
}
