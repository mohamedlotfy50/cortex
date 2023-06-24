import 'package:dtensor/dtensor.dart';

abstract class MLModelBase<T extends Object> {
  void fit({required DTensor<T> x, required DTensor<T> y});
  DTensor<T> predict(DTensor<T> x);
}
