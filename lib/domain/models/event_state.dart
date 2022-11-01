import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_state.freezed.dart';

@freezed
class EventState<T> with _$EventState<T> {
  const EventState._();
  const factory EventState.init([T? data]) = _Init;
  const factory EventState.loading() = _Loading;
  const factory EventState.loaded(T data) = _Loaded;
  const factory EventState.error({int? status, String? message}) = _Error;
}
