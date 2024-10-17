// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapRecord> _$mapRecordSerializer = new _$MapRecordSerializer();

class _$MapRecordSerializer implements StructuredSerializer<MapRecord> {
  @override
  final Iterable<Type> types = const [MapRecord, _$MapRecord];
  @override
  final String wireName = 'MapRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MapRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nomHopital;
    if (value != null) {
      result
        ..add('nom_hopital')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mapHopital;
    if (value != null) {
      result
        ..add('map_hopital')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MapRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nom_hopital':
          result.nomHopital = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'map_hopital':
          result.mapHopital = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MapRecord extends MapRecord {
  @override
  final String nomHopital;
  @override
  final LatLng mapHopital;
  @override
  final DocumentReference<Object> reference;

  factory _$MapRecord([void Function(MapRecordBuilder) updates]) =>
      (new MapRecordBuilder()..update(updates)).build();

  _$MapRecord._({this.nomHopital, this.mapHopital, this.reference}) : super._();

  @override
  MapRecord rebuild(void Function(MapRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapRecordBuilder toBuilder() => new MapRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapRecord &&
        nomHopital == other.nomHopital &&
        mapHopital == other.mapHopital &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, nomHopital.hashCode), mapHopital.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MapRecord')
          ..add('nomHopital', nomHopital)
          ..add('mapHopital', mapHopital)
          ..add('reference', reference))
        .toString();
  }
}

class MapRecordBuilder implements Builder<MapRecord, MapRecordBuilder> {
  _$MapRecord _$v;

  String _nomHopital;
  String get nomHopital => _$this._nomHopital;
  set nomHopital(String nomHopital) => _$this._nomHopital = nomHopital;

  LatLng _mapHopital;
  LatLng get mapHopital => _$this._mapHopital;
  set mapHopital(LatLng mapHopital) => _$this._mapHopital = mapHopital;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MapRecordBuilder() {
    MapRecord._initializeBuilder(this);
  }

  MapRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nomHopital = $v.nomHopital;
      _mapHopital = $v.mapHopital;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapRecord;
  }

  @override
  void update(void Function(MapRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MapRecord build() {
    final _$result = _$v ??
        new _$MapRecord._(
            nomHopital: nomHopital,
            mapHopital: mapHopital,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
