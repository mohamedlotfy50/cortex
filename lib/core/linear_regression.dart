import 'package:d_ml/model/ml_model_base.dart';
import 'package:dtensor/dtensor.dart';

class LinearRegression extends MLModelBase<num> {
  final double lr;
  final int epochs;
  late DTensor<num> _weight;
  late DTensor<num> _bias;

  LinearRegression({this.lr = 0.01, this.epochs = 1000});

  @override
  void fit({required DTensor<num> x, required DTensor<num> y}) {
    int numberOfSample = x.shape[0], numberOfFeature = x.shape[1];
    _bias = DTensor.tensor(0);
    _weight = DTensor.zeros([numberOfFeature]);
    for (int i = 0; i < epochs; i++) {
      final DTensor<num> yPredict = DTensor.dot(x, _weight) + _bias;
      final DTensor<num> dw = DTensor<num>.tensor(1 / numberOfSample) *
          DTensor.dot(x.transpose(), yPredict - y);
      final DTensor<num> db =
          DTensor<num>.tensor(1 / numberOfSample) * DTensor.sum(yPredict - y);

      _weight -= DTensor<num>.tensor(lr) * dw;
      _bias -= DTensor<num>.tensor(lr) * db;
    }
  }

  @override
  DTensor<num> predict(DTensor<num> x) {
    return x.dot(_weight) + _bias;
  }
}
