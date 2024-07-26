import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Currency({
    @JsonKey(name: 'id') required int id,
    required String code,
    required String ccy,
    @JsonKey(name: 'CcyNm_RU') required String ccyNmRU,
    @JsonKey(name: 'CcyNm_UZ') required String ccyNmUZ,
    @JsonKey(name: 'CcyNm_UZC') required String ccyNmUZC,
    @JsonKey(name: 'CcyNm_EN') required String ccyNmEN,
    required String nominal,
    required String rate,
    required String diff,
    required String date,
  }) = _Currency;

  factory Currency.fromJson(Map<String, Object?> json) =>
      _$CurrencyFromJson(json);
}
