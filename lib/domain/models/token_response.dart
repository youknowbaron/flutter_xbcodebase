import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';

@freezed
class TokenResponse with _$TokenResponse  {
  TokenResponse._();
  factory TokenResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String requestToken,
  }) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) => _$TokenResponseFromJson(json);
}
