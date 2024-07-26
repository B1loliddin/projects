// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      id: json['id'] as int,
      code: json['Code'] as String,
      ccy: json['Ccy'] as String,
      ccyNmRU: json['CcyNm_RU'] as String,
      ccyNmUZ: json['CcyNm_UZ'] as String,
      ccyNmUZC: json['CcyNm_UZC'] as String,
      ccyNmEN: json['CcyNm_EN'] as String,
      nominal: json['Nominal'] as String,
      rate: json['Rate'] as String,
      diff: json['Diff'] as String,
      date: json['Date'] as String,
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Code': instance.code,
      'Ccy': instance.ccy,
      'CcyNm_RU': instance.ccyNmRU,
      'CcyNm_UZ': instance.ccyNmUZ,
      'CcyNm_UZC': instance.ccyNmUZC,
      'CcyNm_EN': instance.ccyNmEN,
      'Nominal': instance.nominal,
      'Rate': instance.rate,
      'Diff': instance.diff,
      'Date': instance.date,
    };
