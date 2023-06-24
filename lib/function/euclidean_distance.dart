
import 'package:dtensor/dtensor.dart';
import 'dart:math' as math;

DTensor<num> euclideanDistance(DTensor<num> x1, DTensor<num> x2) {
  final DTensor<num> diff = x1 - x2;
  final DTensor<num> power = diff.pow(2);
  final DTensor<num> sum = power.sum();
  final DTensor<num> sqrt = sum.sqrt();

  return sqrt;
}
