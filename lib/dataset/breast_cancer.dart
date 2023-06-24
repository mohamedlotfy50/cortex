import 'package:dtensor/dtensor.dart';

class BreastCancer {
  final DTensor<num> x = DTensor.ones([2, 2]);

  final DTensor<num> y = DTensor.ones([2, 2]);
}
