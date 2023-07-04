import 'package:d_ml/function/euclidean_distance.dart';
import 'package:d_ml/model/ml_model_base.dart';
import 'package:dtensor/dtensor.dart';

class KNN extends MLModelBase<num> {
  final int k;
  late final DTensor<num> x, y;

  KNN({this.k = 3});

  @override
  void fit({required DTensor<num> x, required DTensor<num> y}) {
    this.x = x;
    this.y = y;
  }

  @override
  DTensor<num> predict(DTensor<num> x) {
    final DTensor<num> result = DTensor<num>.empty(x.shape);
    for (DTensor<num> element in x) {
      result.add(_predict(element));
    }
    return result;
  }

  DTensor<num> _predict(DTensor<num> x) {
    final DTensor<num> distances = DTensor<num>.empty(x.shape);
    for (DTensor<num> element in x) {
      distances.add(euclideanDistance(x, element));
    }
    final DTensor<int> sortIndces = distances.argSort();
    final DTensor<int> topK = sortIndces.subTensor(end: k);
    for (DTensor<int> value in topK) {
      distances.add(y.getFromDtensor(value));
    }

    return distances.mode().get([0]);
  }
}
