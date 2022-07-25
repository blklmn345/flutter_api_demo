import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
abstract class ApiResponse<R> with _$ApiResponse<R> {
  const factory ApiResponse.success(R response) = Success<R>;
  const factory ApiResponse.failure(Object? error) = Failure<R>;
}
