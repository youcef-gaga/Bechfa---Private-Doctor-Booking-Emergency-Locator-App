// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rdv_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RdvRecord> _$rdvRecordSerializer = new _$RdvRecordSerializer();

class _$RdvRecordSerializer implements StructuredSerializer<RdvRecord> {
  @override
  final Iterable<Type> types = const [RdvRecord, _$RdvRecord];
  @override
  final String wireName = 'RdvRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RdvRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.rdvDescription;
    if (value != null) {
      result
        ..add('rdv_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rdvDate;
    if (value != null) {
      result
        ..add('rdv_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rdvEmail;
    if (value != null) {
      result
        ..add('rdv_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rdvTime;
    if (value != null) {
      result
        ..add('rdv_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rdvPatient;
    if (value != null) {
      result
        ..add('rdv_patient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rdvDoctor;
    if (value != null) {
      result
        ..add('rdv_doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rdvCategoryDoctor;
    if (value != null) {
      result
        ..add('rdv_category_doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rdvLocalisationDoctor;
    if (value != null) {
      result
        ..add('rdv_localisation_doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.rdvPerPerson;
    if (value != null) {
      result
        ..add('rdv_per_person')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.rdvPerDoctor;
    if (value != null) {
      result
        ..add('rdv_per_doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.rdvNumPatient;
    if (value != null) {
      result
        ..add('rdv_num_patient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  RdvRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RdvRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'rdv_description':
          result.rdvDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rdv_date':
          result.rdvDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'rdv_email':
          result.rdvEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rdv_time':
          result.rdvTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rdv_patient':
          result.rdvPatient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rdv_doctor':
          result.rdvDoctor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rdv_category_doctor':
          result.rdvCategoryDoctor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rdv_localisation_doctor':
          result.rdvLocalisationDoctor = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'rdv_per_person':
          result.rdvPerPerson = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'rdv_per_doctor':
          result.rdvPerDoctor = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'rdv_num_patient':
          result.rdvNumPatient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$RdvRecord extends RdvRecord {
  @override
  final String rdvDescription;
  @override
  final DateTime rdvDate;
  @override
  final String rdvEmail;
  @override
  final String rdvTime;
  @override
  final String rdvPatient;
  @override
  final String rdvDoctor;
  @override
  final String rdvCategoryDoctor;
  @override
  final LatLng rdvLocalisationDoctor;
  @override
  final DocumentReference<Object> rdvPerPerson;
  @override
  final DocumentReference<Object> rdvPerDoctor;
  @override
  final String rdvNumPatient;
  @override
  final DocumentReference<Object> reference;

  factory _$RdvRecord([void Function(RdvRecordBuilder) updates]) =>
      (new RdvRecordBuilder()..update(updates)).build();

  _$RdvRecord._(
      {this.rdvDescription,
      this.rdvDate,
      this.rdvEmail,
      this.rdvTime,
      this.rdvPatient,
      this.rdvDoctor,
      this.rdvCategoryDoctor,
      this.rdvLocalisationDoctor,
      this.rdvPerPerson,
      this.rdvPerDoctor,
      this.rdvNumPatient,
      this.reference})
      : super._();

  @override
  RdvRecord rebuild(void Function(RdvRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RdvRecordBuilder toBuilder() => new RdvRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RdvRecord &&
        rdvDescription == other.rdvDescription &&
        rdvDate == other.rdvDate &&
        rdvEmail == other.rdvEmail &&
        rdvTime == other.rdvTime &&
        rdvPatient == other.rdvPatient &&
        rdvDoctor == other.rdvDoctor &&
        rdvCategoryDoctor == other.rdvCategoryDoctor &&
        rdvLocalisationDoctor == other.rdvLocalisationDoctor &&
        rdvPerPerson == other.rdvPerPerson &&
        rdvPerDoctor == other.rdvPerDoctor &&
        rdvNumPatient == other.rdvNumPatient &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, rdvDescription.hashCode),
                                                rdvDate.hashCode),
                                            rdvEmail.hashCode),
                                        rdvTime.hashCode),
                                    rdvPatient.hashCode),
                                rdvDoctor.hashCode),
                            rdvCategoryDoctor.hashCode),
                        rdvLocalisationDoctor.hashCode),
                    rdvPerPerson.hashCode),
                rdvPerDoctor.hashCode),
            rdvNumPatient.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RdvRecord')
          ..add('rdvDescription', rdvDescription)
          ..add('rdvDate', rdvDate)
          ..add('rdvEmail', rdvEmail)
          ..add('rdvTime', rdvTime)
          ..add('rdvPatient', rdvPatient)
          ..add('rdvDoctor', rdvDoctor)
          ..add('rdvCategoryDoctor', rdvCategoryDoctor)
          ..add('rdvLocalisationDoctor', rdvLocalisationDoctor)
          ..add('rdvPerPerson', rdvPerPerson)
          ..add('rdvPerDoctor', rdvPerDoctor)
          ..add('rdvNumPatient', rdvNumPatient)
          ..add('reference', reference))
        .toString();
  }
}

class RdvRecordBuilder implements Builder<RdvRecord, RdvRecordBuilder> {
  _$RdvRecord _$v;

  String _rdvDescription;
  String get rdvDescription => _$this._rdvDescription;
  set rdvDescription(String rdvDescription) =>
      _$this._rdvDescription = rdvDescription;

  DateTime _rdvDate;
  DateTime get rdvDate => _$this._rdvDate;
  set rdvDate(DateTime rdvDate) => _$this._rdvDate = rdvDate;

  String _rdvEmail;
  String get rdvEmail => _$this._rdvEmail;
  set rdvEmail(String rdvEmail) => _$this._rdvEmail = rdvEmail;

  String _rdvTime;
  String get rdvTime => _$this._rdvTime;
  set rdvTime(String rdvTime) => _$this._rdvTime = rdvTime;

  String _rdvPatient;
  String get rdvPatient => _$this._rdvPatient;
  set rdvPatient(String rdvPatient) => _$this._rdvPatient = rdvPatient;

  String _rdvDoctor;
  String get rdvDoctor => _$this._rdvDoctor;
  set rdvDoctor(String rdvDoctor) => _$this._rdvDoctor = rdvDoctor;

  String _rdvCategoryDoctor;
  String get rdvCategoryDoctor => _$this._rdvCategoryDoctor;
  set rdvCategoryDoctor(String rdvCategoryDoctor) =>
      _$this._rdvCategoryDoctor = rdvCategoryDoctor;

  LatLng _rdvLocalisationDoctor;
  LatLng get rdvLocalisationDoctor => _$this._rdvLocalisationDoctor;
  set rdvLocalisationDoctor(LatLng rdvLocalisationDoctor) =>
      _$this._rdvLocalisationDoctor = rdvLocalisationDoctor;

  DocumentReference<Object> _rdvPerPerson;
  DocumentReference<Object> get rdvPerPerson => _$this._rdvPerPerson;
  set rdvPerPerson(DocumentReference<Object> rdvPerPerson) =>
      _$this._rdvPerPerson = rdvPerPerson;

  DocumentReference<Object> _rdvPerDoctor;
  DocumentReference<Object> get rdvPerDoctor => _$this._rdvPerDoctor;
  set rdvPerDoctor(DocumentReference<Object> rdvPerDoctor) =>
      _$this._rdvPerDoctor = rdvPerDoctor;

  String _rdvNumPatient;
  String get rdvNumPatient => _$this._rdvNumPatient;
  set rdvNumPatient(String rdvNumPatient) =>
      _$this._rdvNumPatient = rdvNumPatient;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RdvRecordBuilder() {
    RdvRecord._initializeBuilder(this);
  }

  RdvRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rdvDescription = $v.rdvDescription;
      _rdvDate = $v.rdvDate;
      _rdvEmail = $v.rdvEmail;
      _rdvTime = $v.rdvTime;
      _rdvPatient = $v.rdvPatient;
      _rdvDoctor = $v.rdvDoctor;
      _rdvCategoryDoctor = $v.rdvCategoryDoctor;
      _rdvLocalisationDoctor = $v.rdvLocalisationDoctor;
      _rdvPerPerson = $v.rdvPerPerson;
      _rdvPerDoctor = $v.rdvPerDoctor;
      _rdvNumPatient = $v.rdvNumPatient;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RdvRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RdvRecord;
  }

  @override
  void update(void Function(RdvRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RdvRecord build() {
    final _$result = _$v ??
        new _$RdvRecord._(
            rdvDescription: rdvDescription,
            rdvDate: rdvDate,
            rdvEmail: rdvEmail,
            rdvTime: rdvTime,
            rdvPatient: rdvPatient,
            rdvDoctor: rdvDoctor,
            rdvCategoryDoctor: rdvCategoryDoctor,
            rdvLocalisationDoctor: rdvLocalisationDoctor,
            rdvPerPerson: rdvPerPerson,
            rdvPerDoctor: rdvPerDoctor,
            rdvNumPatient: rdvNumPatient,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
