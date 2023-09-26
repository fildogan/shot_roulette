import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_of_measurement_model.freezed.dart';

// RUN IN TERMINAL: flutter packages pub run build_runner build

@freezed
class UnitOfMeasurementModel with _$UnitOfMeasurementModel {
  const factory UnitOfMeasurementModel({
    required String id,
    required String titleEN,
    required String titlePL,
  }) = _UnitOfMeasurementModel;
  const UnitOfMeasurementModel._();
}
