import 'package:d_ml/core/knn.dart';
import 'package:d_ml/d_ml.dart';
import 'package:d_ml/dataset/iris_dataset.dart';
import 'package:d_ml/model/ml_dataset.dart';

void main() {
  IrisDataSet irisDataSet = IrisDataSet();
  final KNN knnModel = KNN();
  knnModel.fit(x: irisDataSet.x, y: irisDataSet.y);
}
