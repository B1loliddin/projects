// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  String get code => throw _privateConstructorUsedError;

  String get ccy => throw _privateConstructorUsedError;

  @JsonKey(name: 'CcyNm_RU')
  String get ccyNmRU => throw _privateConstructorUsedError;

  @JsonKey(name: 'CcyNm_UZ')
  String get ccyNmUZ => throw _privateConstructorUsedError;

  @JsonKey(name: 'CcyNm_UZC')
  String get ccyNmUZC => throw _privateConstructorUsedError;

  @JsonKey(name: 'CcyNm_EN')
  String get ccyNmEN => throw _privateConstructorUsedError;

  String get nominal => throw _privateConstructorUsedError;

  String get rate => throw _privateConstructorUsedError;

  String get diff => throw _privateConstructorUsedError;

  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;

  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      String code,
      String ccy,
      @JsonKey(name: 'CcyNm_RU') String ccyNmRU,
      @JsonKey(name: 'CcyNm_UZ') String ccyNmUZ,
      @JsonKey(name: 'CcyNm_UZC') String ccyNmUZC,
      @JsonKey(name: 'CcyNm_EN') String ccyNmEN,
      String nominal,
      String rate,
      String diff,
      String date});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? ccy = null,
    Object? ccyNmRU = null,
    Object? ccyNmUZ = null,
    Object? ccyNmUZC = null,
    Object? ccyNmEN = null,
    Object? nominal = null,
    Object? rate = null,
    Object? diff = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      ccy: null == ccy
          ? _value.ccy
          : ccy // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmRU: null == ccyNmRU
          ? _value.ccyNmRU
          : ccyNmRU // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmUZ: null == ccyNmUZ
          ? _value.ccyNmUZ
          : ccyNmUZ // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmUZC: null == ccyNmUZC
          ? _value.ccyNmUZC
          : ccyNmUZC // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmEN: null == ccyNmEN
          ? _value.ccyNmEN
          : ccyNmEN // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      diff: null == diff
          ? _value.diff
          : diff // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$$_CurrencyCopyWith(
          _$_Currency value, $Res Function(_$_Currency) then) =
      __$$_CurrencyCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      String code,
      String ccy,
      @JsonKey(name: 'CcyNm_RU') String ccyNmRU,
      @JsonKey(name: 'CcyNm_UZ') String ccyNmUZ,
      @JsonKey(name: 'CcyNm_UZC') String ccyNmUZC,
      @JsonKey(name: 'CcyNm_EN') String ccyNmEN,
      String nominal,
      String rate,
      String diff,
      String date});
}

/// @nodoc
class __$$_CurrencyCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$_Currency>
    implements _$$_CurrencyCopyWith<$Res> {
  __$$_CurrencyCopyWithImpl(
      _$_Currency _value, $Res Function(_$_Currency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? ccy = null,
    Object? ccyNmRU = null,
    Object? ccyNmUZ = null,
    Object? ccyNmUZC = null,
    Object? ccyNmEN = null,
    Object? nominal = null,
    Object? rate = null,
    Object? diff = null,
    Object? date = null,
  }) {
    return _then(_$_Currency(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      ccy: null == ccy
          ? _value.ccy
          : ccy // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmRU: null == ccyNmRU
          ? _value.ccyNmRU
          : ccyNmRU // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmUZ: null == ccyNmUZ
          ? _value.ccyNmUZ
          : ccyNmUZ // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmUZC: null == ccyNmUZC
          ? _value.ccyNmUZC
          : ccyNmUZC // ignore: cast_nullable_to_non_nullable
              as String,
      ccyNmEN: null == ccyNmEN
          ? _value.ccyNmEN
          : ccyNmEN // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
      diff: null == diff
          ? _value.diff
          : diff // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_Currency implements _Currency {
  const _$_Currency(
      {@JsonKey(name: 'id') required this.id,
      required this.code,
      required this.ccy,
      @JsonKey(name: 'CcyNm_RU') required this.ccyNmRU,
      @JsonKey(name: 'CcyNm_UZ') required this.ccyNmUZ,
      @JsonKey(name: 'CcyNm_UZC') required this.ccyNmUZC,
      @JsonKey(name: 'CcyNm_EN') required this.ccyNmEN,
      required this.nominal,
      required this.rate,
      required this.diff,
      required this.date});

  factory _$_Currency.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  final String code;
  @override
  final String ccy;
  @override
  @JsonKey(name: 'CcyNm_RU')
  final String ccyNmRU;
  @override
  @JsonKey(name: 'CcyNm_UZ')
  final String ccyNmUZ;
  @override
  @JsonKey(name: 'CcyNm_UZC')
  final String ccyNmUZC;
  @override
  @JsonKey(name: 'CcyNm_EN')
  final String ccyNmEN;
  @override
  final String nominal;
  @override
  final String rate;
  @override
  final String diff;
  @override
  final String date;

  @override
  String toString() {
    return 'Currency(id: $id, code: $code, ccy: $ccy, ccyNmRU: $ccyNmRU, ccyNmUZ: $ccyNmUZ, ccyNmUZC: $ccyNmUZC, ccyNmEN: $ccyNmEN, nominal: $nominal, rate: $rate, diff: $diff, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currency &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.ccy, ccy) || other.ccy == ccy) &&
            (identical(other.ccyNmRU, ccyNmRU) || other.ccyNmRU == ccyNmRU) &&
            (identical(other.ccyNmUZ, ccyNmUZ) || other.ccyNmUZ == ccyNmUZ) &&
            (identical(other.ccyNmUZC, ccyNmUZC) ||
                other.ccyNmUZC == ccyNmUZC) &&
            (identical(other.ccyNmEN, ccyNmEN) || other.ccyNmEN == ccyNmEN) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.diff, diff) || other.diff == diff) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, ccy, ccyNmRU, ccyNmUZ,
      ccyNmUZC, ccyNmEN, nominal, rate, diff, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      __$$_CurrencyCopyWithImpl<_$_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(
      {@JsonKey(name: 'id') required final int id,
      required final String code,
      required final String ccy,
      @JsonKey(name: 'CcyNm_RU') required final String ccyNmRU,
      @JsonKey(name: 'CcyNm_UZ') required final String ccyNmUZ,
      @JsonKey(name: 'CcyNm_UZC') required final String ccyNmUZC,
      @JsonKey(name: 'CcyNm_EN') required final String ccyNmEN,
      required final String nominal,
      required final String rate,
      required final String diff,
      required final String date}) = _$_Currency;

  factory _Currency.fromJson(Map<String, dynamic> json) = _$_Currency.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;

  @override
  String get code;

  @override
  String get ccy;

  @override
  @JsonKey(name: 'CcyNm_RU')
  String get ccyNmRU;

  @override
  @JsonKey(name: 'CcyNm_UZ')
  String get ccyNmUZ;

  @override
  @JsonKey(name: 'CcyNm_UZC')
  String get ccyNmUZC;

  @override
  @JsonKey(name: 'CcyNm_EN')
  String get ccyNmEN;

  @override
  String get nominal;

  @override
  String get rate;

  @override
  String get diff;

  @override
  String get date;

  @override
  @JsonKey(ignore: true)
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}
