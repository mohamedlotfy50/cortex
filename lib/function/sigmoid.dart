import 'package:dtensor/dtensor.dart';

DTensor<num> sigmoid(DTensor<num> x) {
  return DTensor<num>.tensor(1) / (DTensor<num>.tensor(1) + x.exp());
}
