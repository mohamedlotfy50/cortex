import 'package:dtensor/dtensor.dart';

DTensor<num> mse(DTensor<num> y, DTensor<num> yPredict) {
  return (yPredict - y).pow(2).mean();
}
