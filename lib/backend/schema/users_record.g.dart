// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userDoctor;
    if (value != null) {
      result
        ..add('user_doctor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.aboutDoctor;
    if (value != null) {
      result
        ..add('about_doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doctorCategory;
    if (value != null) {
      result
        ..add('doctor_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prix;
    if (value != null) {
      result
        ..add('prix')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.grade;
    if (value != null) {
      result
        ..add('grade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.locationDoctor;
    if (value != null) {
      result
        ..add('location_doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.slot;
    if (value != null) {
      result
        ..add('slot')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.chifaPatient;
    if (value != null) {
      result
        ..add('chifa_patient')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_doctor':
          result.userDoctor = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'about_doctor':
          result.aboutDoctor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'doctor_category':
          result.doctorCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prix':
          result.prix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grade':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'location_doctor':
          result.locationDoctor = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'slot':
          result.slot.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'chifa_patient':
          result.chifaPatient = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final bool userDoctor;
  @override
  final String aboutDoctor;
  @override
  final String doctorCategory;
  @override
  final String prix;
  @override
  final double grade;
  @override
  final LatLng locationDoctor;
  @override
  final BuiltList<String> slot;
  @override
  final String chifaPatient;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.userDoctor,
      this.aboutDoctor,
      this.doctorCategory,
      this.prix,
      this.grade,
      this.locationDoctor,
      this.slot,
      this.chifaPatient,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        userDoctor == other.userDoctor &&
        aboutDoctor == other.aboutDoctor &&
        doctorCategory == other.doctorCategory &&
        prix == other.prix &&
        grade == other.grade &&
        locationDoctor == other.locationDoctor &&
        slot == other.slot &&
        chifaPatient == other.chifaPatient &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                email.hashCode),
                                                            displayName
                                                                .hashCode),
                                                        photoUrl.hashCode),
                                                    uid.hashCode),
                                                createdTime.hashCode),
                                            phoneNumber.hashCode),
                                        userDoctor.hashCode),
                                    aboutDoctor.hashCode),
                                doctorCategory.hashCode),
                            prix.hashCode),
                        grade.hashCode),
                    locationDoctor.hashCode),
                slot.hashCode),
            chifaPatient.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('userDoctor', userDoctor)
          ..add('aboutDoctor', aboutDoctor)
          ..add('doctorCategory', doctorCategory)
          ..add('prix', prix)
          ..add('grade', grade)
          ..add('locationDoctor', locationDoctor)
          ..add('slot', slot)
          ..add('chifaPatient', chifaPatient)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool _userDoctor;
  bool get userDoctor => _$this._userDoctor;
  set userDoctor(bool userDoctor) => _$this._userDoctor = userDoctor;

  String _aboutDoctor;
  String get aboutDoctor => _$this._aboutDoctor;
  set aboutDoctor(String aboutDoctor) => _$this._aboutDoctor = aboutDoctor;

  String _doctorCategory;
  String get doctorCategory => _$this._doctorCategory;
  set doctorCategory(String doctorCategory) =>
      _$this._doctorCategory = doctorCategory;

  String _prix;
  String get prix => _$this._prix;
  set prix(String prix) => _$this._prix = prix;

  double _grade;
  double get grade => _$this._grade;
  set grade(double grade) => _$this._grade = grade;

  LatLng _locationDoctor;
  LatLng get locationDoctor => _$this._locationDoctor;
  set locationDoctor(LatLng locationDoctor) =>
      _$this._locationDoctor = locationDoctor;

  ListBuilder<String> _slot;
  ListBuilder<String> get slot => _$this._slot ??= new ListBuilder<String>();
  set slot(ListBuilder<String> slot) => _$this._slot = slot;

  String _chifaPatient;
  String get chifaPatient => _$this._chifaPatient;
  set chifaPatient(String chifaPatient) => _$this._chifaPatient = chifaPatient;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _userDoctor = $v.userDoctor;
      _aboutDoctor = $v.aboutDoctor;
      _doctorCategory = $v.doctorCategory;
      _prix = $v.prix;
      _grade = $v.grade;
      _locationDoctor = $v.locationDoctor;
      _slot = $v.slot?.toBuilder();
      _chifaPatient = $v.chifaPatient;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              userDoctor: userDoctor,
              aboutDoctor: aboutDoctor,
              doctorCategory: doctorCategory,
              prix: prix,
              grade: grade,
              locationDoctor: locationDoctor,
              slot: _slot?.build(),
              chifaPatient: chifaPatient,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'slot';
        _slot?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
