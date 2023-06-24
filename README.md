# Cortex
Dart library designed for cross-platform training and deploying machine learning models.

## Features

- **Data preprocessing** tools for cleaning, transforming, and encoding data
- **Machine learning** algorithms for supervised and unsupervised learning, such as classification, regression, clustering, and dimensionality reduction
- **Model evaluation** tools for cross-validation, scoring, and performance metrics
- **Model selection** tools for hyperparameter tuning, feature selection, and pipeline construction
- **Model deployment** tools for saving and loading models and pipelines

## Getting started
Start by installing the library :
### Flutter
```cmd
flutter pub add cortex
```
### Dart
```cmd
dart pub add cortex
```
### pubspec
```cmd
dependencies:
  cortex: ^1.0.0
```

## Usage

Choose and train machine learning algorithms like in the `/example` folder. 

```dart
IrisDataSet irisDataSet = IrisDataSet();
final KNN knnModel = KNN();
knnModel.fit(x: irisDataSet.x, y: irisDataSet.y);
```

