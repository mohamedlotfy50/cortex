import 'package:d_ml/model/ml_dataset.dart';
import 'package:dtensor/dtensor.dart';

class IrisDataSet {
  final DTensor<num> x = DTensor.ones([2, 2]);

  final DTensor<num> y = DTensor.ones([2, 2]);
}
